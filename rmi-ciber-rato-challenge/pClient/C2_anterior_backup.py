
import sys
from croblink import *
from math import *
import xml.etree.ElementTree as ET
import pprint
import time
import itertools
import random   

CELLROWS=7
CELLCOLS=14

MAPPINGCOLS = (((CELLCOLS*2)-1)*2)+1
MAPPINGROWS = (((CELLROWS*2)-1)*2)+1

currentCompass = None

class MyRob(CRobLinkAngs):  

    def __init__(self, rob_name, rob_id, angles, host):
        CRobLinkAngs.__init__(self, rob_name, rob_id, angles, host)
        self.ticks = 0
        self.first_tick = True   
        self.map = [[' ' for col in range(0, MAPPINGCOLS)] for row in range(0, MAPPINGROWS)]      
        self.init_localization = None    
        self.curr_localization = None
        self.init_mapping = None   
        self.curr_mapping = None   
        # self.cell_limits = [[]]    
        self.walkable_cells = []
        self.visited_cells = []   
        self.counter_rot = 0
        self.power = 0.123
        self.power2 = 0.1
    # In this map the center of cell (i,j), (i in 0..6, j in 0..13) is mapped to labMap[i*2][j*2].
    # to know if there is a wall on top of cell(i,j) (i in 0..5), check if the value of labMap[i*2+1][j*2] is space or not
    def setMap(self, labMap): 
        self.labMap = labMap

    def printMap(self):
        for l in reversed(self.labMap):
            print(''.join([str(l) for l in l]))

    def run(self):
        if self.status != 0:
            print("Connection refused or error")
            quit()

        state = 'stop'
        stopped_state = 'choose' 
        next_pos = None        
        delta_ang = 0

        print("ROWS: {}, COLS: {}".format(len(self.map), len(self.map[0])))

        while True:
            
            self.readSensors()

            #print("RIGHT: {}, LEFT: {}".format(self.measures.irSensor[1], self.measures.irSensor[2])) 

            if (self.ticks == 0):
                print("init post: ({},{})".format(self.measures.x, self.measures.y))  
                
            if self.measures.endLed:
                print(self.rob_name + " exiting")
                quit() 

            if state == 'stop' and self.measures.start:
                state = stopped_state

            if state != 'stop' and self.measures.stop:
                
                stopped_state = state
                state = 'stop'   

            if state == 'choose':
                #print("Im am choose")
                state, next_pos, delta_ang = self.choose_next(state)        
                print("X: {}, Y: {}".format(self.measures.x, self.measures.y))  
                #print("next pos: ", next_pos)  
                #print("next state: ", state) 
            if state == "walk":
                #print("Im am walk")
                state = self.move_one(next_pos)             
            
            if state == "rot_left":
                #print("im am rot left ")
                state = self.rot_left(delta_ang)

            if state == "rot_right":
                #print("Im am rot right")
                state = self.rot_left(delta_ang)

            elif state=='wait':
                #print("Im am wait...")
                state = self.move_one(next_pos) 
                self.driveMotors(0.0,0.0)
            
            #time.sleep(0.5)  
            self.ticks = self.ticks + 1  

    def init_position():

        self.init_mapping = [int(MAPPINGROWS/2), int(MAPPINGCOLS/2)] 

        self.curr_mapping = self.init_mapping
        self.map[self.curr_mapping[0]][self.curr_mapping[1]] = 'I'       
        
        self.init_localization = [self.measures.x, self.measures.y] #_local 
        self.curr_localization = self.init_localization    

        self.visited_cells.append(self.curr_localization)  if self.curr_localization not in self.visited_cells else _   
        neighborhood =  self.check_env()
        self.walkable_cells.extend([c for c in neighborhood if (c not in self.visited_cells) and (c not in self.walkable_cells)])# .      

        for c in self.walkable_cells: 
            if c in self.visited_cells:
                self.walkable_cells.remove(c) 

        walkable_neighborhood = [fcell for fcell in neighborhood if fcell in self.walkable_cells] 
        
    def check_cardinal(self):
        compass_v = self.measures.compass
        cardinal_dir = None ; center = None ; left = None ; right = None ; back = None

        if (compass_v >= -45 and compass_v < 45):
            cardinal_dir = 'N'
            center = [0, 1] ; left = [1, 0] ; back = [0, -1] ; right = [-1, 0]     
        if (compass_v >= 45 and compass_v < 135):
            cardinal_dir = 'O'
            center = [1, 0] ; left = [0, -1] ; back = [-1, 0] ; right = [0, 1]
        if (compass_v >= 135 or compass_v < -135):   
            cardinal_dir = 'S' 
            center = [0, -1] ; left = [-1, 0] ; back = [0, 1] ; right = [1, 0]
        if (compass_v >= -135 and compass_v < -45):
            cardinal_dir = 'E'
            center = [-1, 0] ; left = [0, 1] ; back = [1, 0] ; right = [0, -1]    

        return cardinal_dir, center, left, right, back  


    def check_env(self):
        center_id = 0 ; left_id = 1 ; right_id = 2 ; back_id = 3  
        cardinal_dir, center, left, right, back = self.check_cardinal()   
        neighborhood = []  
        
        if self.measures.irSensor[center_id] > 2:
            self.map[self.curr_mapping[0]+center[0]][self.curr_mapping[1]+center[1]] = '|' if cardinal_dir == 'N' or cardinal_dir == 'S' else '-'
        if self.measures.irSensor[center_id] < 1:
            #print(self.curr_mapping[1])
            self.map[self.curr_mapping[0]+center[0]][self.curr_mapping[1]+center[1]] = 'X'
            neighborhood.append(
                [ 
                    self.curr_localization[0]+center[1]*2 , 
                    self.curr_localization[1]+center[0]*2 
                ]
            )

        if self.measures.irSensor[back_id] > 2:
            self.map[self.curr_mapping[0]+back[0]][self.curr_mapping[1]+back[1]] = '|' if cardinal_dir == 'N' or cardinal_dir == 'S' else '-' 
        if self.measures.irSensor[back_id] < 1:
            self.map[self.curr_mapping[0]+back[0]][self.curr_mapping[1]+back[1]] = 'X'
            neighborhood.append(
                [
                    self.curr_localization[0]+back[1]*2, 
                    self.curr_localization[1]+back[0]*2
                ]
            )

        if self.measures.irSensor[left_id] > 2:
            self.map[self.curr_mapping[0]+left[0]][self.curr_mapping[1]+left[1]] = '-' if cardinal_dir == 'N' or cardinal_dir == 'S' else '|'
        if self.measures.irSensor[left_id] < 1:
            self.map[self.curr_mapping[0]+left[0]][self.curr_mapping[1]+left[1]] = 'X'
            neighborhood.append(
                [
                    self.curr_localization[0]+left[1]*2, 
                    self.curr_localization[1]+left[0]*2
                ]
            )
        
        if self.measures.irSensor[right_id] > 2:
            self.map[self.curr_mapping[0]+right[0]][self.curr_mapping[1]+right[1]] = "-" if cardinal_dir == 'N' or cardinal_dir == 'S' else '|'
        if self.measures.irSensor[right_id] < 1:
            self.map[self.curr_mapping[0]+right[0]][self.curr_mapping[1]+right[1]] = 'X'
            neighborhood.append(
                [
                    self.curr_localization[0]+right[1]*2, 
                    self.curr_localization[1]+right[0]*2 
                ]
            )

        return neighborhood

    
    def update_position(self, diff, cardinal):
        if (cardinal == "N" or cardinal == "S"): self.curr_mapping = [self.curr_mapping[0], self.curr_mapping[1]+int(diff)]  
        else: self.curr_mapping = [self.curr_mapping[0]+int(diff), self.curr_mapping[1]]
        
        if (cardinal == "N" or cardinal == "S"): self.curr_localization = [self.measures.x, self.curr_localization[1]]  
        else: self.curr_localization = [self.curr_localization[1], self.measures.y] 
        
        self.map[self.curr_mapping[0]][self.curr_mapping[1]] = 'X'          
        
        self.visited_cells.append(self.curr_localization)  if self.curr_localization not in self.visited_cells else _       
        neighborhood =  self.check_env()       
        self.walkable_cells.extend([c for c in neighborhood if c not in self.visited_cells and c not in self.walkable_cells])   
        #self.walkable_cells.sort(key=lambda cell: cell[0] - self.curr_localization[0] or cell[1] - self.curr_localization[1])      
        
        for c in self.walkable_cells: 
            if c in self.visited_cells:
                self.walkable_cells.remove(c)  
        
        return [fcell for fcell in neighborhood if fcell in self.walkable_cells], neighborhood    

    
    def choose_next(self, state): 
        center_id = 0 ; left_id = 1 ; right_id = 2 ; back_id = 3 
        
        cardinal, _, _, _, _ = self.check_cardinal() 

        walkable_neighborhood, neighborhood = [], []

            if walkable_neighborhood: 
                next_pos = walkable_neighborhood[random.randint(0, len(walkable_neighborhood)-1) if len(walkable_neighborhood) > 1 else 0]   
            else:
                next_pos = neighborhood[random.randint(0, len(neighborhood)-1) if len(neighborhood) > 1 else 0]        

            if next_pos[0] > self.curr_localization[0]: #self.correctPosition()
                return 'walk', next_pos, 0         
            
            elif next_pos[1] > self.curr_localization[1]:
                return "rot_left", next_pos, 90          

            elif next_pos[0] < self.curr_localization[0]:
                return "rot_left", next_pos, 180 
            
            elif next_pos[1] < self.curr_localization[1]: 
                return "rot_right", next_pos, 90        

            self.first_tick = False         
        
        elif (cardinal == "N" or cardinal == "S"):      
            #if abs((diff_x:=(self.measures.x - self.curr_localization[0])) == 2): 
            walkable_neighborhood, neighborhood = self.update_position(2 if cardinal == "N" else -2, cardinal)  
            next_pos = self.curr_localization           
            
            if walkable_neighborhood: 
                next_pos = walkable_neighborhood[random.randint(0, len(walkable_neighborhood)-1)]
            else:
                next_pos = neighborhood[random.randint(0, len(neighborhood)-1)]  
            
            if next_pos[0] > self.curr_localization[0]: #self.correctPosition()
                return 'walk', next_pos, 0 if cardinal == "N" else  "rot_left", next_pos, 180            
            
            elif next_pos[1] > self.curr_localization[1]:
                return "rot_left", next_pos, 90 if cardinal == "N" else "rot_right", next_pos, 90          

            elif next_pos[0] < self.curr_localization[0]:
                return "rot_left", next_pos, 180 if cardinal == "N"  else "walk", next_pos, 0
            
            elif next_pos[1] < self.curr_localization[1]: 
                return "rot_right", next_pos, 90 if cardinal == "N" else "rot_left", next_pos, 90           
            
            else: 
                return state, next_pos, 0    
                
        else:     
            #if abs(diff_y:=(self.measures.y - self.curr_localization[1])) == 2:      
            walkable_neighborhood = self.update_position(2 if cardinal == "N" else -2, cardinal)      
            next_pos = self.curr_localization 
            
            if walkable_neighborhood:
                next_pos = walkable_neighborhood[random.randint(0, len(walkable_neighborhood)-1)]
            else:
                next_pos = neighborhood[random.randint(0, len(neighborhood)-1)]  

            if next_pos[0] > self.curr_localization[0]: #self.correctPosition()
                return 'rot_right', next_pos, 90 if cardinal == "O" else "rot_left", next_pos, 90          
            
            elif next_pos[1] > self.curr_localization[1]:    
                return "walk", next_pos, 0 if cardinal == "O" else  "rot_left", next_pos, 180  

            elif next_pos[0] < self.curr_localization[0]:
                return "rot_left", next_pos, 90 if cardinal == "O" else  "rot_right", next_pos, 90            
            
            elif next_pos[1] < self.curr_localization[1]: 
                return "rot_left", next_pos, 180 if cardinal == "O" else  "walk", next_pos, 0            

            else:
                return state, next_pos, 0      

    def pcontrol(self, v1, v2, kp) :
        return kp * (v1-v2)
                         
    def move_one(self, next_pos): 
        cardinal, _, _, _, _ = self.check_cardinal()   
   
        if (cardinal == "N" or cardinal == "S"):      
            #print(self.measures.x - next_pos[0])
           

            if abs((self.measures.x - next_pos[0]) == 0) : #and self.measures.irSensor[0] < 2:   
                self.driveMotors(0.0, 0.0)  
                return "choose"
            else:
                if abs(self.measures.x - next_pos[0]) > 0.2:
                    p = self.pcontrol(next_pos[1], self.measures.y, 0.01) if cardinal == "N" else  self.pcontrol(self.measures.y, next_pos[1], 0.01) 
                    self.driveMotors(0.1 - (p/2), 0.1 + (p/2))    
                    return "walk"  
                else:
                    p = self.pcontrol(next_pos[1], self.measures.y, 0.001) if cardinal == "N" else  self.pcontrol(self.measures.y, next_pos[1], 0.001) 
                    self.driveMotors(0.01 - (p/2), 0.01 + (p/2))             
                    return "walk"   

        elif (cardinal == "O" or cardinal == "E") : #and and and 
            #print(self.measures.y - next_pos[1])
            if abs(self.measures.y - next_pos[1]) == 0:      #and self.measures.irSensor[0] < 2:   
                self.driveMotors(0.0, 0.0)    
                return "choose"   
            else:
                if abs(self.measures.y - next_pos[1] > 0.2):
                    p = self.pcontrol(self.measures.x, next_pos[0], 0.01) if cardinal == "O" else  self.pcontrol(next_pos[0], self.measures.x, 0.01) 
                    self.driveMotors(0.1 - (p/2), 0.1 + (p/2))  
                    return "walk"   
                else:  
                    p = self.pcontrol(self.measures.x, next_pos[0], 0.001) if cardinal == "O" else  self.pcontrol(next_pos[0], self.measures.x, 0.001)          
                    self.driveMotors(0.01 - (p/2), 0.01 + (p/2))     
                    return "walk"   

        else:
            print("return to choose")
            self.driveMotors(0.0, 0.0)           
            return "choose"    

    def rot_left(self, delta_ang):
        state = ""
        if delta_ang == 180:
            if self.counter_rot < 10:    
                self.driveMotors(-self.power2, self.power2)  
                state = "rot_left"
            elif self.counter_rot >= 10 and self.counter_rot < 17:
                self.driveMotors(-self.power2, self.power2)
                self.power2 = self.power2 - 0.008  
                state = "rot_left"
            elif self.counter_rot >= 17 and self.counter_rot <20 : 
                self.driveMotors(-0.01, 0.01)
                state = "rot_left"
            elif self.counter_rot>= 20 and self.counter_rot< 25:
                self.driveMotors(0.0, 0.0)
                state = "rot_left"    
            else:
                self.driveMotors(0.0, 0.0)
                self.power2 = 0.1  
                self.counter_rot = 0
                print(self.measures.compass)
                state = "walk"   
        else:
            if self.counter_rot < 10:
                self.driveMotors(-self.power,self.power)   
                self.power = self.power - 0.01
                state = "rot_left"    
            elif self.counter_rot>= 10 and self.counter_rot < 14:
                self.driveMotors(0.0, 0.0)
                state = "rot_left"
            else:
                self.driveMotors(0.0, 0.0)
                self.power = 0.123 
                self.counter_rot = 0  
                print(self.measures.compass)
                state = "walk"     
        
        self.counter_rot = self.counter_rot + 1     
        return state 

    def rot_right(self, delta_ang): # def
        state = ""
        if delta_ang == 180:
            if self.counter_rot < 10:    
                self.driveMotors(self.power2, -self.power2)  
                state = "rot_right"
            elif self.counter_rot >= 10 and self.counter_rot < 17:
                self.driveMotors(self.power2, -self.power2)
                self.power2 = self.power2 - 0.008  
                state = "rot_right"
            elif self.counter_rot >= 17 and self.counter_rot <20 : 
                self.driveMotors(0.01, -0.01)
                state = "rot_right"
            elif self.counter_rot>= 20 and self.counter_rot< 25:
                self.driveMotors(0.0, 0.0)
                state = "rot_right" 
            else:
                self.driveMotors(0.0, 0.0)
                self.power2 = 0.1  
                self.counter_rot = 0
                print(self.measures.compass) 
                state = "choose"
        else:
            if self.counter_rot < 10:
                self.driveMotors(self.power,-self.power)   
                self.power = self.power - 0.01
                state = "rot_right"    
            elif self.counter_rot>= 10 and self.counter_rot < 14:
                self.driveMotors(0.0, 0.0)
                state = "rot_right"
            else:
                self.driveMotors(0.0, 0.0)
                self.power = 0.123     
                self.counter_rot = 0  
                print(self.measures.compass)
                state = "choose"    

        self.counter_rot = self.counter_rot +  1 
        return state 
            
  
class Map():
    def __init__(self, filename):
        tree = ET.parse(filename)
        root = tree.getroot() 
        
        self.labMap = [[' '] * (CELLCOLS*2-1) for i in range(CELLROWS*2-1) ]
        i=1
        for child in root.iter('Row'):
           line=child.attrib['Pattern']
           row =int(child.attrib['Pos'])
           if row % 2 == 0:  # this line defines vertical lines
               for c in range(len(line)):
                   if (c+1) % 3 == 0:
                       if line[c] == '|':
                           self.labMap[row][(c+1)//3*2-1]='|'
                       else:
                           None
           else:  # this line defines horizontal lines
               for c in range(len(line)):
                   if c % 3 == 0:
                       if line[c] == '-':
                           self.labMap[row][c//3*2]='-'
                       else:
                           None
               
           i=i+1


rob_name = "pClient1"
host = "localhost"
pos = 1
mapc = None

for i in range(1, len(sys.argv),2):
    if (sys.argv[i] == "--host" or sys.argv[i] == "-h") and i != len(sys.argv) - 1:
        host = sys.argv[i + 1]
    elif (sys.argv[i] == "--pos" or sys.argv[i] == "-p") and i != len(sys.argv) - 1:
        pos = int(sys.argv[i + 1])
    elif (sys.argv[i] == "--robname" or sys.argv[i] == "-p") and i != len(sys.argv) - 1:
        rob_name = sys.argv[i + 1]
    elif (sys.argv[i] == "--map" or sys.argv[i] == "-m") and i != len(sys.argv) - 1:
        mapc = Map(sys.argv[i + 1])
    else:
        print("Unkown argument", sys.argv[i])
        quit()

if __name__ == '__main__':
    rob=MyRob(rob_name,pos,[0.0,90.0,-90.0,180.0],host)
    if mapc != None:
        rob.setMap(mapc.labMap)
        rob.printMap()
    
    rob.run()



                # print("init post: ({}, {})".format(self.init_localization[0], self.init_localization[1]))  
                # print("Current Point: ({}, {})".format(self.curr_localization[0], self.curr_localization[1]))  
                # print("Knwon cells: ", self.walkable_cells)      
                # print("Visited Cells: ", self.visited_cells)  
                # print("walkable Neighborhood: ", walkable_neighborhood) 
            


                


                 
