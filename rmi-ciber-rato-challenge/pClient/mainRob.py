
import sys
from croblink import *
from math import *
import xml.etree.ElementTree as ET
import pprint

CELLROWS=7
CELLCOLS=14



class MyRob(CRobLinkAngs):
    
    def __init__(self, rob_name, rob_id, angles, host):
        CRobLinkAngs.__init__(self, rob_name, rob_id, angles, host)
        self.ticks = 0
        self.error_prev = 0
        self.rectifier = 0
        self.I = 0
        self.turning = False  
        self.counter = 0
        self.drive = (0.0, 0.0) 
        self.counter = 0   

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
        stopped_state = 'run'

        while True:
            
            self.readSensors()

            if self.measures.endLed:
                print(self.rob_name + " exiting")
                quit()

            if state == 'stop' and self.measures.start:
                state = stopped_state

            if state != 'stop' and self.measures.stop:
                stopped_state = state
                state = 'stop'

            if state == 'run':
                state = self.move_fwd()
                
            elif state=='wait':
                self.driveMotors(0.0,0.0)
            
            elif state=='return':
                pass

    def PID_control(self, dvalue,mvalue, Kp, Ki,Kd ): #,  

        error = dvalue - mvalue #dvalue = desired value, #mvalue = measured value

        P = Kp * error
        self.I = self.I + Ki * error * 1 #(time - time_prev)
        D = Kd * (error - self.error_prev) / 1 #(time - time_prev)

        self.error_prev = error  
        #time_prev = time 

        return P+self.I+D  #            
            
    def move_fwd(self):
        #print(self.ticks)
        center_id = 0   
        left_id = 1
        right_id = 2
        back_id = 3    


                                
                                                  

        #print("LEFT SENSOR: {}".format(self.measures.irSensor[left_id]) )
        #print("CENTER SENSOR: {}".format(self.measures.irSensor[center_id]))  

        # if self.turning == True:
        #     self.driveMotors(self.drive[0], self.drive[1])   
        #     self.counter = self.counter + 1
        #     if self.counter == 3:
        #         self.counter = 0   
        #         self.turning = False   
        # else:
        #     if (self.measures.irSensor[center_id]) > 1: 
        #         if (self.measures.irSensor[left_id] < 1.4): #1/(0.4+0.4) --> esta longe...  
        #             self.turning = True
        #             self.drive = (-.14, .14)
        #             self.driveMotors(-0.14, 0.14) 
                    
        #     if (self.measures.irSensor[right_id] < 1.4):
        #          self.turning = True
        #          self.drive = (.14, -.14)  
        #          self.driveMotors(0.14, -0.14) 
            #else:
            #    self.driveMotors(-0.1, -0.1)
            # else:         
            
            #     #self.driveMotors(self.drive[0]-self.rectifier, self.drive[1]+self.rectifier)    

            #     self.driveMotors(.1-self.rectifier, .1+self.rectifier)    

               # print(self.measures.irSensor[center_id])

        ## CRIS
        

        return 'run'          

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
