
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
        self.curr_cell = None
        self.curr_mapping = None
        self.next_cell = None
        self.newtowalk_cells = []
        self.newtowalk_neighborhood = []
        self.neighborhood = []
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
        delta_ang = 0
        cardinal = 0

        print("ROWS: {}, COLS: {}".format(len(self.map), len(self.map[0])))

        self.readSensors()

        print("ola")
        self.init_position()
        print()

        while True:

            self.readSensors()

            #print("RIGHT: {}, LEFT: {}".format(self.measures.irSensor[1], self.measures.irSensor[2]))

            if self.ticks % 25 == 0:
                for row in self.map[::-1]:
                    for cell in row:
                        print(cell, end = '')
                    print("\n", end = '')



            if self.measures.endLed:
                print(self.rob_name + " exiting")
                quit()

            if state == 'stop' and self.measures.start:
                state = stopped_state

            if state != 'stop' and self.measures.stop:
                stopped_state = state
                state = 'stop'

            if state == 'choose':
                state, delta_ang, cardinal = self.choose_next(state)
                print("Current cell: ", self.curr_cell)
                print("Next cell:", self.next_cell)
                print("self.newtowalk_neighborhood: ", self.newtowalk_neighborhood)
                print("self.neighborhood: ", self.neighborhood)
                print("LEFT: {}, RIGHT: {}".format(self.measures.irSensor[1], self.measures.irSensor[2]))
                #print(" ")
            if state == "walk":
                print("Im am walk")
                print("FRENTE SENSOR: ", self.measures.irSensor[0])
                #print("  ")
                state = self.move_one()

            if state == "rot_left":
                print("im am rot left ")
                #print(self.measures.compass)
                state = self.rot_left(delta_ang, cardinal)

            if state == "rot_right":
                print("Im am rot right")
                print(self.measures.compass)
                state = self.rot_right(delta_ang, cardinal)

            elif state=='wait':
                #print("Im am wait...")
                #state = self.move_one(next_pos)
                self.driveMotors(0.0,0.0)

            #time.sleep(0.5)
            self.ticks = self.ticks + 1
            if self.ticks % 25 == 0:
                for i in range(MAPPINGROWS, 0):
                    for j in range(0, MAPPINGCOLS):
                        print(self.map[i], [j], end = ' ')
                    print("\n", end = '')

    def init_position(self):
        self.curr_mapping = [int(MAPPINGROWS/2), int(MAPPINGCOLS/2)] ## nosso (0, 0)
        self.map[self.curr_mapping[0]][self.curr_mapping[1]] = 'I'

        self.curr_cell = [self.measures.x, self.measures.y] ## save coordenadas

        self.visited_cells.append(self.curr_cell)  if self.curr_cell not in self.visited_cells else _  # adiciona onde estou nas celulas visitadas

        neighbors =  self.check_env() # checka se tem paredes ou passagens e retorna as celulas a volta dele livres.
        self.newtowalk_cells.extend(neighbors)
        self.neighborhood = self.newtowalk_cells
        self.newtowalk_neighborhood = self.newtowalk_cells

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

        if self.measures.irSensor[center_id] > 1.2:
            self.map[self.curr_mapping[0]+center[0]][self.curr_mapping[1]+center[1]] = '|' if cardinal_dir == 'N' or cardinal_dir == 'S' else '-'
        if self.measures.irSensor[center_id] < 1:
            #print(self.curr_mapping[1])
            self.map[self.curr_mapping[0]+center[0]][self.curr_mapping[1]+center[1]] = 'X'
            neighborhood.append(
                [
                    self.curr_cell[0]+center[1]*2 ,
                    self.curr_cell[1]+center[0]*2
                ]
            )

        if self.measures.irSensor[back_id] > 1.2:
            self.map[self.curr_mapping[0]+back[0]][self.curr_mapping[1]+back[1]] = '|' if cardinal_dir == 'N' or cardinal_dir == 'S' else '-'
        if self.measures.irSensor[back_id] < 1:
            self.map[self.curr_mapping[0]+back[0]][self.curr_mapping[1]+back[1]] = 'X'
            neighborhood.append(
                [
                    self.curr_cell[0]+back[1]*2,
                    self.curr_cell[1]+back[0]*2
                ]
            )

        if self.measures.irSensor[left_id] > 1.2:
            self.map[self.curr_mapping[0]+left[0]][self.curr_mapping[1]+left[1]] = '-' if cardinal_dir == 'N' or cardinal_dir == 'S' else '|'
        if self.measures.irSensor[left_id] < 1:
            self.map[self.curr_mapping[0]+left[0]][self.curr_mapping[1]+left[1]] = 'X'
            neighborhood.append(
                [
                    self.curr_cell[0]+left[1]*2,
                    self.curr_cell[1]+left[0]*2
                ]
            )

        if self.measures.irSensor[right_id] > 1.2:
            self.map[self.curr_mapping[0]+right[0]][self.curr_mapping[1]+right[1]] = "-" if cardinal_dir == 'N' or cardinal_dir == 'S' else '|'
        if self.measures.irSensor[right_id] < 1:
            self.map[self.curr_mapping[0]+right[0]][self.curr_mapping[1]+right[1]] = 'X'
            neighborhood.append(
                [
                    self.curr_cell[0]+right[1]*2,
                    self.curr_cell[1]+right[0]*2
                ]
            )

        return neighborhood


    def update_position(self, diff, cardinal):
        if (cardinal == "N" or cardinal == "S"):
             self.curr_mapping = [self.curr_mapping[0], self.curr_mapping[1]+diff]  ## no python y é na posicao 0
        else:
            self.curr_mapping = [self.curr_mapping[0]+diff, self.curr_mapping[1]] ## no python x é na posicao 1

        if (cardinal == "N" or cardinal == "S"):
            self.curr_cell = [self.curr_cell[0]+diff, self.curr_cell[1]]
        else:
            self.curr_cell = [self.curr_cell[0], self.curr_cell[1]+diff]

        print("DIFF: ", diff)

        self.map[self.curr_mapping[0]][self.curr_mapping[1]] = 'X'

        self.visited_cells.append(self.curr_cell)  if self.curr_cell not in self.visited_cells else print("")   # adicionar current cell se ela nao estiver ja nas visitadas
        neighbors =  self.check_env()
        self.newtowalk_cells.extend([c for c in neighbors if c not in self.newtowalk_cells and c not in self.visited_cells])       # meter a vizinhança nas walkable cells se nao estiver  nas walkable cells

        for c in self.newtowalk_cells:
            if c in self.visited_cells:             ##nas visitadas e remover as celulas ja visitadas
                self.newtowalk_cells.remove(c)

        self.newtowalk_cells.sort(key=lambda new_cell: new_cell[0] - self.curr_cell[0] or new_cell[1] - self.curr_cell[1]) ## sort pela distancia a celula de onde está.  newtowalk_cells

        self.neighborhood = neighbors  ## all neighbors of the cell.
        self.newtowalk_neighborhood = [fcell for fcell in self.neighborhood if fcell in self.newtowalk_cells] ## neighbors of the current cell yet to explore


    def choose_next(self, state):
        center_id = 0 ; left_id = 1 ; right_id = 2 ; back_id = 3

        cardinal, _, _, _, _ = self.check_cardinal()

        if (cardinal == "N" or cardinal == "S"):
            self.next_cell = self.curr_cell

            if self.newtowalk_neighborhood:
                self.next_cell = self.newtowalk_neighborhood[random.randint(0, len(self.newtowalk_neighborhood)-1) if len(self.newtowalk_neighborhood) > 0 else 0]
            else:
                self.next_cell = self.neighborhood[random.randint(0, len(self.neighborhood)-1) if len(self.neighborhood) > 0 else 0]

            if self.next_cell[0] > self.curr_cell[0]: #self.correctPosition()
                return ('walk', 0, cardinal) if cardinal == "N" else  ("rot_left", 180, cardinal)

            elif self.next_cell[1] > self.curr_cell[1]:
                return ("rot_left", 90, cardinal) if cardinal == "N" else ("rot_right", 90, cardinal)

            elif self.next_cell[0] < self.curr_cell[0]:
                return ("rot_left", 180, cardinal) if cardinal == "N"  else ("walk", 0, cardinal)

            elif self.next_cell[1] < self.curr_cell[1]:
                return ("rot_right", 90, cardinal) if cardinal == "N" else ("rot_left", 90, cardinal)

            else:
                return (state, 0, cardinal)

        else:
            self.next_cell = self.curr_cell

            if self.newtowalk_neighborhood:
                self.next_cell = self.newtowalk_neighborhood[random.randint(0, len(self.newtowalk_neighborhood)-1) if len(self.newtowalk_neighborhood) > 0 else 0]
            else:
                self.next_cell = self.neighborhood[random.randint(0, len(self.neighborhood)-1) if len(self.neighborhood) > 0 else 0]

            if self.next_cell[0] > self.curr_cell[0]: #self.correctPosition()
                return ('rot_right', 90, cardinal) if cardinal == "O" else ("rot_left", 90, cardinal)

            elif self.next_cell[1] > self.curr_cell[1]:
                return ("walk", 0, cardinal) if cardinal == "O" else  ("rot_left", 180, cardinal)

            elif self.next_cell[0] < self.curr_cell[0]:
                return ("rot_left", 90, cardinal) if cardinal == "O" else  ("rot_right", 90, cardinal)

            elif self.next_cell[1] < self.curr_cell[1]:
                return ("rot_left", 180, cardinal) if cardinal == "O" else  ("walk", 0, cardinal)

            else:
                return (state, 0, cardinal)

    def pcontrol(self, v1, v2, kp) :
        return kp * (v1-v2)

    def move_one(self):
        cardinal, _, _, _, _ = self.check_cardinal()

        if (cardinal == "N" or cardinal == "S"):

            if abs((self.measures.x - self.next_cell[0]) == 0) or self.measures.irSensor[0] > 2: #:
                print("CHEGUEI")
                print(" ")
                self.update_position(2 if cardinal == "N" else -2, cardinal)
                self.driveMotors(0.0, 0.0)
                return "choose"
            else:
                if abs(self.measures.x - self.next_cell[0]) > 0.2:
                    p = self.pcontrol(self.next_cell[1], self.measures.y, 0.014) if cardinal == "N" else  self.pcontrol(self.measures.y, self.next_cell[1], 0.014)
                    #self.driveMotors(0.14, 0.14 )
                    self.driveMotors(0.14 - (p/2), 0.14 + (p/2))
                    return "walk"
                else:
                    p = self.pcontrol(self.next_cell[1], self.measures.y, 0.0014) if cardinal == "N" else  self.pcontrol(self.measures.y, self.next_cell[1], 0.0014)
                    #self.driveMotors(0.014, 0.014 )
                    self.driveMotors(0.014 - (p/2), 0.014 + (p/2))
                    return "walk"

        elif (cardinal == "O" or cardinal == "E") : #and and and
            #print(self.measures.y - self.next_cell[1])
            if abs(self.measures.y - self.next_cell[1]) == 0 or self.measures.irSensor[0]> 2:      #and self.measures.irSensor[0] < 2:
                #print("CHEGUEI")
                #print(" ")
                self.update_position(2 if cardinal == "O"  else -2, cardinal)
                self.driveMotors(0.0, 0.0)
                return "choose"
            else:
                if abs(self.measures.y - self.next_cell[1]) > 0.2:
                    p = self.pcontrol(self.measures.x, self.next_cell[0], 0.014) if cardinal == "O" else  self.pcontrol(self.next_cell[0], self.measures.x, 0.014)
                    #self.driveMotors(0.14, 0.14 )
                    self.driveMotors(0.14 - (p/2), 0.14 + (p/2))
                    return "walk"
                else:
                    p = self.pcontrol(self.measures.x, self.next_cell[0], 0.0014) if cardinal == "O" else  self.pcontrol(self.next_cell[0], self.measures.x, 0.0014)
                    #self.driveMotors(0.014, 0.014 )
                    self.driveMotors(0.014 - (p/2), 0.014 + (p/2))
                    return "walk"

        else:
            print("return to choose")
            self.driveMotors(0.0, 0.0)
            return "choose"

    def rot_left(self, delta_ang, cardinal):
        state = ""
        if delta_ang == 180 :
            if cardinal == "N":
                if self.measures.compass >= 175 or self.measures.compass <= -175:
                    self.driveMotors(0.0, 0.0)
                    print("DONE OF ROTATING LEFT")
                    state = "walk"
                else:
                    self.driveMotors(-0.02, 0.02)
                    print("im am rot left ")
                    state = "rot_left"
            if cardinal == "S":
                if self.measures.compass >= -5 and self.measures.compass <= 5:
                    self.driveMotors(0.0, 0.0)
                    state = "walk"
                else:
                    self.driveMotors(-0.02, 0.02)
                    state = "rot_left"
            if cardinal == "O":
                if self.measures.compass >= -95 and self.measures.compass <= -85:
                    self.driveMotors(0.0, 0.0)
                    state = "walk"
                else:
                    self.driveMotors(-0.02, 0.02)
                    state = "rot_left"
            if cardinal == "E":
                if self.measures.compass >= 85 and self.measures.compass <= 95:
                    self.driveMotors(0.0, 0.0)
                    state = "walk"
                else:
                    self.driveMotors(-0.02, 0.02)
                    state = "rot_left"
        else:
            if cardinal == "N":
                if self.measures.compass >= 85 and self.measures.compass <= 95:
                    self.driveMotors(0.0, 0.0)
                    state = "walk"
                else:
                    self.driveMotors(-0.02, 0.02)
                    state = "rot_left"
            if cardinal == "S":
                if self.measures.compass >= -95 and self.measures.compass <= -85:
                    self.driveMotors(0.0, 0.0)
                    state = "walk"
                else:
                    self.driveMotors(-0.02, 0.02)
                    state = "rot_left"
            if cardinal == "O":
                if self.measures.compass >= 175 or self.measures.compass <= -175:
                    self.driveMotors(0.0, 0.0)
                    state = "walk"
                else:
                    self.driveMotors(-0.02, 0.02)
                    state = "rot_left"
            if cardinal == "E":
                if self.measures.compass >= -5 and self.measures.compass <= 5:
                    self.driveMotors(0.0, 0.0)
                    state = "walk"
                else:
                    self.driveMotors(-0.02, 0.02)
                    state = "rot_left"

        return state

    def rot_right(self, delta_ang, cardinal): # def
        state = ""
        if delta_ang == 180:
            if cardinal == "N":
                if self.measures.compass >= 175 or self.measures.compass <= -175:
                    self.driveMotors(0.0, 0.0)
                    state = "walk"
                else:
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"
            if cardinal == "S":
                if self.measures.compass >= -5 and self.measures.compass <= 5:
                    self.driveMotors(0.0, 0.0)
                    state = "walk"
                else:
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"
            if cardinal == "O":
                if self.measures.compass >= -95 and self.measures.compass <= -85 :
                    self.driveMotors(0.0, 0.0)
                    state = "walk"
                else:
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"
            if cardinal == "E":
                if self.measures.compass >= 85 and self.measures.compass <= 95:
                    self.driveMotors(0.0, 0.0)
                    state = "walk"
                else:
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"
        else:
            if cardinal == "N":
                if self.measures.compass >= -95 and self.measures.compass <= -85:
                    self.driveMotors(0.0, 0.0)
                    state = "walk"
                else:
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"
            if cardinal == "S":
                if self.measures.compass >= 85 and self.measures.compass <= 95:
                    self.driveMotors(0.0, 0.0)
                    state = "walk"
                else:
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"
            if cardinal == "O":
                if self.measures.compass >= -5 and self.measures.compass <= 5:
                    self.driveMotors(0.0, 0.0)
                    state = "walk"
                else:
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"
            if cardinal == "E":
                if self.measures.compass >= 175 or self.measures.compass <= -175:
                    self.driveMotors(0.0, 0.0)
                    state = "walk"
                else:
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"

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




                # print("init post: ({}, {})".format(self.init_cell[0], self.init_cell[1]))
                # print("Current Point: ({}, {})".format(self.curr_cell[0], self.curr_cell[1]))
                # print("Knwon cells: ", self.newtowalk_cells)
                # print("Visited Cells: ", self.visited_cells)
                # print("walkable Neighborhood: ", walkable_neighborhood)
