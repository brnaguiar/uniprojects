import sys
from croblink import *
from math import *
import xml.etree.ElementTree as ET
import time
import itertools
import random
from tree_search import *
import math
import os
#import numpy

CELLROWS=7
CELLCOLS=14

MAPPINGCOLS = (((CELLCOLS*2)-1)*2)+1
MAPPINGROWS = (((CELLROWS*2)-1)*2)+1

center, left, right, back  = 0, 1, 2, 3   

class Domain(SearchDomain):

    def __init__(self, connections):
        self.connections = connections # visited + free cells: all knwon cells

    def actions (self, cell):
        actlist = []
        for (c1, c2) in self.connections:
            if (c1 == cell):
                actlist = actlist + [(c1, c2)]    
            elif (c2 == cell): 
                actlist = actlist + [(c2, c1)]
        return   actlist

    def result(self, cell, action):
        #return
        (c1, c2) = action
        if c1 == cell:
             return c2

    def cost (self, pos, action):
        return 1

    def heuristic(self, pos, goal):
        return math.hypot(pos[0]-goal[0], pos[1]-goal[1])

class MyRob(CRobLinkAngs):

    def __init__(self, rob_name, rob_id, angles, host, mapfile, pathfile):
        CRobLinkAngs.__init__(self, rob_name, rob_id, angles, host)   

        self.errorPrev = 0

        self.curr_x = 0
        self.curr_y = 0
        self.prev_x = 0
        self.prev_y = 0
        self.prev_lpout = 0
        self.prev_rpout = 0
        self.curr_theta = 0
        self.prev_theta = 0
        self.curr_gps = [0, 0]

        self.map = [[' ' for col in range(0, MAPPINGCOLS)] for row in range(0, MAPPINGROWS)]
        self.curr_mapping = None
        self.init_mapping = None

        self.curr_cell = None
        self.next_cell = None

        self.newtowalk_cells = []
        self.newtowalk_neighborhood = []
        self.neighborhood = []
        self.visited_cells = []

        self.map_connections = []

        self.tree_path = []
        self.beacon_positions = {}
        self.beacon_mapping = {}  
        self.beacons = 0
        self.beacon = 1
        self.beacon_path = []
        self.inicial_x = 0
        self.inicial_y = 0
        self.beaconCanWrite = True
        self.beaconCanWriteSimTime = True   

        self.mapfile = mapfile
        self.pathfile = pathfile 
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

        self.readSensors()
        self.inicial_x = self.measures.x
        self.inicial_y = self.measures.y
        self.init_position()

        if os.path.exists(self.pathfile):
            os.remove(self.pathfile)

        while True:

            self.readSensors()

            # if self.ticks % 25 == 0:
            #     for i in self.map[::-1]:
            #         for j in i:
            #             print(j, end = '')
            #         print("\n", end = '')

            #print("\n\n" +  str(self.ticks)  + "\n\n") 

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

            if state == "walk":
                state = self.move_one()

            if state == "rot_left":
                state = self.rot_left(delta_ang, cardinal)


            if state == "rot_right":
                state = self.rot_right(delta_ang, cardinal)

            if state=='end':
                self.driveMotors(0.0,0.0)
                for i in self.beacon_mapping:
                    x, y = self.beacon_mapping.get(i)
                    self.map[x][y] =  str(i)     
                if os.path.exists(self.mapfile):
                    os.remove(self.mapfile)
                with open(self.mapfile, 'w') as mapfile:
                    for row in self.map[::-1]:
                        #print("escrevendo no ficheiro...")
                        mapfile.write(''.join([str(a) for a in row]) + '\n')
                self.write_planning()
                sys.exit()

            if self.measures.time > int(self.simTime)-50 and self.beaconCanWriteSimTime: #$self.    
                for i in self.beacon_mapping:
                    x, y = self.beacon_mapping.get(i)
                    self.map[x][y] =  str(i)   
                if os.path.exists(self.mapfile):
                    os.remove(self.mapfile)
                with open(self.mapfile, 'w') as mapfile:
                    for row in self.map[::-1]:
                        #print("escrevendo no ficheiro...")
                        mapfile.write(''.join([str(a) for a in row]) + '\n') 
                self.write_planning()
                self.beaconCanWriteSimTime = False     


    def init_position(self):
        self.curr_mapping = [int(MAPPINGROWS/2), int(MAPPINGCOLS/2)] ## nosso (0, 0)
        self.init_mapping = self.curr_mapping

        self.map[self.curr_mapping[0]][self.curr_mapping[1]] = '0'

        self.curr_cell = [0, 0] ## save coordenadas

        self.visited_cells.append(self.curr_cell)  if self.curr_cell not in self.visited_cells else _  # adiciona onde estou nas celulas visitadas

        neighbors =  self.check_env() # checka se tem paredes ou passagens e retorna as celulas a volta dele livres.

        self.newtowalk_cells.extend(neighbors)

        self.neighborhood = self.newtowalk_cells

        self.newtowalk_neighborhood = self.newtowalk_cells

        self.map_connections = [[self.curr_cell, neighbor_cell] for neighbor_cell in self.neighborhood]


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
        mapping_neighborhood = []

        if self.measures.irSensor[center_id] > 1.4:
            self.map[self.curr_mapping[0]+center[0]][self.curr_mapping[1]+center[1]] = '|' if cardinal_dir == 'N' or cardinal_dir == 'S' else '-'
        if self.measures.irSensor[center_id] < 1:
            self.map[self.curr_mapping[0]+center[0]][self.curr_mapping[1]+center[1]] = 'X'
            neighborhood.append(
                [
                    self.curr_cell[0]+center[1]*2 ,
                    self.curr_cell[1]+center[0]*2
                ]
            )

        if self.measures.irSensor[back_id] > 1.4:
            self.map[self.curr_mapping[0]+back[0]][self.curr_mapping[1]+back[1]] = '|' if cardinal_dir == 'N' or cardinal_dir == 'S' else '-'
        if self.measures.irSensor[back_id] < 1:
            self.map[self.curr_mapping[0]+back[0]][self.curr_mapping[1]+back[1]] = 'X'
            neighborhood.append(
                [
                    self.curr_cell[0]+back[1]*2,
                    self.curr_cell[1]+back[0]*2
                ]
            )

        if self.measures.irSensor[left_id] > 1.4:
            self.map[self.curr_mapping[0]+left[0]][self.curr_mapping[1]+left[1]] = '-' if cardinal_dir == 'N' or cardinal_dir == 'S' else '|'
        if self.measures.irSensor[left_id] < 1:
            self.map[self.curr_mapping[0]+left[0]][self.curr_mapping[1]+left[1]] = 'X'
            neighborhood.append(
                [
                    self.curr_cell[0]+left[1]*2,
                    self.curr_cell[1]+left[0]*2
                ]
            )

        if self.measures.irSensor[right_id] > 1.4:
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

        #print("updating postition...")
        if (cardinal == "N" or cardinal == "S"):
            self.curr_mapping = [self.curr_mapping[0], self.curr_mapping[1]+diff]  ## no python y é na posicao 0
        else:
            self.curr_mapping = [self.curr_mapping[0]+diff, self.curr_mapping[1]] ## no python x é na posicao 1

        if (cardinal == "N" or cardinal == "S"):
            self.curr_cell = [self.curr_cell[0]+diff, self.curr_cell[1]]
        else:
            self.curr_cell = [self.curr_cell[0], self.curr_cell[1]+diff]

        self.map[self.curr_mapping[0]][self.curr_mapping[1]] = 'X'

        self.visited_cells.append(self.curr_cell)  if self.curr_cell not in self.visited_cells else print("Already Visited")   # adicionar current cell se ela nao estiver ja nas visitadas

        neighbors =  self.check_env()

        self.newtowalk_cells.extend([c for c in neighbors if c not in self.newtowalk_cells and c not in self.visited_cells])       # meter a vizinhança nas walkable cells se nao estiver  nas walkable cells

        for c in self.newtowalk_cells:
            if c in self.visited_cells:             ##nas visitadas e remover as celulas ja visitadas
                self.newtowalk_cells.remove(c)

        self.newtowalk_cells.sort(key=lambda new_cell: abs(math.dist(new_cell, self.curr_cell))) ## sort pela distancia a celula de onde está.  newtowalk_cells

        self.neighborhood = neighbors  ## all neighbors of the cell.

        self.newtowalk_neighborhood = [fcell for fcell in self.neighborhood if fcell in self.newtowalk_cells] ## neighbors of the current cell yet to explore

        if cardinal == "N":
            if (closest_cell:=[self.curr_cell[0], self.curr_cell[1]-2]) in self.newtowalk_neighborhood:
                self.newtowalk_cells.remove(closest_cell)
                self.newtowalk_cells = [closest_cell] + self.newtowalk_cells
            elif (closest_cell:=[self.curr_cell[0]+2, self.curr_cell[1]]) in self.newtowalk_neighborhood:
                self.newtowalk_cells.remove(closest_cell)
                self.newtowalk_cells = [closest_cell] + self.newtowalk_cells
            elif (closest_cell:=[self.curr_cell[0], self.curr_cell[1]+2]) in self.newtowalk_neighborhood:
                self.newtowalk_cells.remove(closest_cell)
                self.newtowalk_cells = [closest_cell] + self.newtowalk_cells
        elif cardinal == "S":
            if (closest_cell:=[self.curr_cell[0], self.curr_cell[1]+2]) in self.newtowalk_neighborhood:
                self.newtowalk_cells.remove(closest_cell)
                self.newtowalk_cells = [closest_cell] + self.newtowalk_cells
            elif (closest_cell:=[self.curr_cell[0]-2, self.curr_cell[1]]) in self.newtowalk_neighborhood:
                self.newtowalk_cells.remove(closest_cell)
                self.newtowalk_cells = [closest_cell] + self.newtowalk_cells
            elif (closest_cell:=[self.curr_cell[0], self.curr_cell[1]-2]) in self.newtowalk_neighborhood:
                self.newtowalk_cells.remove(closest_cell)
                self.newtowalk_cells = [closest_cell] + self.newtowalk_cells
        elif cardinal == "E":
            if (closest_cell:=[self.curr_cell[0]-2, self.curr_cell[1]]) in self.newtowalk_neighborhood:
                self.newtowalk_cells.remove(closest_cell)
                self.newtowalk_cells = [closest_cell] + self.newtowalk_cells
            elif (closest_cell:=[self.curr_cell[0], self.curr_cell[1]-2]) in self.newtowalk_neighborhood:
                self.newtowalk_cells.remove(closest_cell)
                self.newtowalk_cells = [closest_cell] + self.newtowalk_cells
            elif (closest_cell:=[self.curr_cell[0]+2, self.curr_cell[1]]) in self.newtowalk_neighborhood:
                self.newtowalk_cells.remove(closest_cell)
                self.newtowalk_cells = [closest_cell] + self.newtowalk_cells

        else:
            if (closest_cell:=[self.curr_cell[0]+2, self.curr_cell[1]]) in self.newtowalk_neighborhood:
                self.newtowalk_cells.remove(closest_cell)
                self.newtowalk_cells = [closest_cell] + self.newtowalk_cells
            elif (closest_cell:=[self.curr_cell[0], self.curr_cell[1]+2]) in self.newtowalk_neighborhood:
                self.newtowalk_cells.remove(closest_cell)
                self.newtowalk_cells = [closest_cell] + self.newtowalk_cells
            elif (closest_cell:=[self.curr_cell[0]-2, self.curr_cell[1]]) in self.newtowalk_neighborhood:
                self.newtowalk_cells.remove(closest_cell)
                self.newtowalk_cells = [closest_cell] + self.newtowalk_cells


        self.map_connections = self.map_connections + [[self.curr_cell, neighbor_cell] for neighbor_cell in self.neighborhood
                                                                                            if [self.curr_cell, neighbor_cell] not in self.map_connections
                                                                                            and [neighbor_cell, self.curr_cell] not in self.map_connections]

        #numpy.savez("connections.npz", connections=numpy.array(self.map_connections))


    def choose_next(self, state):
        center_id = 0 ; left_id = 1 ; right_id = 2 ; back_id = 3

        cardinal, _, _, _, _ = self.check_cardinal()

        if self.measures.ground != -1:
            if self.measures.ground not in self.beacon_positions:
                self.beacon_positions[self.measures.ground]=self.curr_cell 
                self.beacon_mapping[self.measures.ground] = self.curr_mapping    

        if self.beacon in self.beacon_positions: ### get id for dictionary 
            self.beacon_path = SearchTree(SearchProblem(Domain(self.map_connections), self.beacon_positions[self.beacon-1], self.beacon_positions[self.beacon]), 'a*').search(20000)[0]
            with open(self.pathfile, 'a+') as planfile:
                        #print("escrevendo no ficheiro...")
                        planfile.write(''.join(str(self.beacon_positions.get(self.beacon-1)[0])) + ' ' 
                                     + ''.join(str(self.beacon_positions.get(self.beacon-1)[1]))) if self.beacon-1 == 0 else print("Ignoring")
                        
                        for idx, cell in enumerate(self.beacon_path):
                            planfile.write('\n' + ''.join(str(cell[0])) + ' ' + ''.join(str(cell[1])) + ' #{}'.format(str(self.beacon)) if idx == len(self.beacon_path)-1
                                      else '\n' + ''.join(str(cell[0])) + ' ' + ''.join(str(cell[1])))

            self.beacon = self.beacon + 1 # 

        if self.beacon == int(self.nBeacons) and self.beaconCanWrite:
            self.beacon_path = SearchTree(SearchProblem(Domain(self.map_connections), self.beacon_positions[self.beacon-1], self.beacon_positions[0]), 'a*').search(20000)[0]
            with open(self.pathfile, 'a') as planfile:
                for idx, cell in enumerate(self.beacon_path):
                    planfile.write(  '\n' + ''.join(str(cell[0])) + ' ' + ''.join(str(cell[1]))) 
            self.beaconCanWrite = False

        self.next_cell = self.curr_cell

        if self.tree_path == []:

            if not self.newtowalk_cells:
                if self.curr_cell != [0, 0]:
                    self.tree_path = SearchTree(SearchProblem(Domain(self.map_connections), self.curr_cell, [0, 0]), 'a*').search(2500)[0]
                else:
                    self.map[self.init_mapping[0]][self.init_mapping[1]]  =  "0"
                    return ("end", 0, cardinal)
            else:
                self.tree_path = SearchTree(SearchProblem(Domain(self.map_connections), self.curr_cell, self.newtowalk_cells[0]), 'a*').search(2500)[0]    


        self.next_cell = self.tree_path.pop(0)

        if (cardinal == "N" or cardinal == "S"):

            if self.next_cell[0] > self.curr_cell[0]: #self.correctPosition()
                return ('walk', 0, cardinal) if cardinal == "N" else  ("rot_right", 180, cardinal)

            elif self.next_cell[1] > self.curr_cell[1]:
                return ("rot_left", 90, cardinal) if cardinal == "N" else ("rot_right", 90, cardinal)

            elif self.next_cell[0] < self.curr_cell[0]:
                return ("rot_right", 180, cardinal) if cardinal == "N"  else ("walk", 0, cardinal)

            elif self.next_cell[1] < self.curr_cell[1]:
                return ("rot_right", 90, cardinal) if cardinal == "N" else ("rot_left", 90, cardinal)

            else:
                return (state, 0, cardinal)

        else:

            if self.next_cell[0] > self.curr_cell[0]: #self.correctPosition()
                return ('rot_right', 90, cardinal) if cardinal == "O" else ("rot_left", 90, cardinal)

            elif self.next_cell[1] > self.curr_cell[1]:
                return ("walk", 0, cardinal) if cardinal == "O" else  ("rot_right", 180, cardinal)

            elif self.next_cell[0] < self.curr_cell[0]:
                return ("rot_left", 90, cardinal) if cardinal == "O" else  ("rot_right", 90, cardinal)

            elif self.next_cell[1] < self.curr_cell[1]:
                return ("rot_right", 180, cardinal) if cardinal == "O" else  ("walk", 0, cardinal)

            else:
                return (state, 0, cardinal)

    def pcontrol(self, dvalue, mvalue, kp, kd):
        error = dvalue - mvalue
        p = kp * error
        d = kd * (error - self.errorPrev)
        self.errorPrev = error
        return p + d

    def move_one(self):
        cardinal, _, _, _, _ = self.check_cardinal()  

        kp = 0.015
        kd = 0.05
        #near, close, very_close, on_spot = (1.6, 1.7, 1.85, 1.99)
        near, close, very_close, on_spot = (1.65, 1.7, 1.85, 1.99)

        if abs(math.hypot(self.curr_gps[0] - self.curr_x, self.curr_gps[1] - self.curr_y)) <= near and self.measures.irSensor[center] < 2.3: # se ainda nao estiver na proxima celula e se nao tiver uma parede a frente...
            self.perform_move(0.15)
            return "walk"

        elif abs(math.hypot(self.curr_gps[0] - self.curr_x, self.curr_gps[1] - self.curr_y)) <= close and self.measures.irSensor[center] < 2.3: # !!!!!!!!!!!!!  ! ver se ja nao posso parar aqui !!!!!!!!!!!!!!!!!!!
            self.perform_move(0.08)
            return "walk"

        elif abs(math.hypot(self.curr_gps[0] - self.curr_x, self.curr_gps[1] - self.curr_y)) <= very_close and self.measures.irSensor[center] < 2.3:
            self.perform_move(0.04)
            return "walk"

        elif abs(math.hypot(self.curr_gps[0] - self.curr_x, self.curr_gps[1] - self.curr_y)) < on_spot and self.measures.irSensor[center] < 2.3:
            self.perform_move(0.01)
            return "walk"

        else: # ANDOU 1!!!!!!
            if self.measures.irSensor[center] >= 2.3: 
                self.perform_move(0.0)
                rounded_x = int(abs(self.curr_x)) if ((int(abs(self.curr_x)) % 2) == 0) else int(abs(self.curr_x)) +1 # arredonda a coordenada
                rounded_y = int(abs(self.curr_y)) if ((int(abs(self.curr_y)) % 2) == 0) else int(abs(self.curr_y)) +1 # arredonda a coordeanada.

                self.curr_x = (0 - rounded_x) if self.curr_x < 0 else rounded_x
                self.curr_y = (0 - rounded_y) if self.curr_y < 0 else rounded_y

                self.prev_x = self.curr_x
                self.prev_y = self.curr_y
                self.curr_gps = [self.curr_x, self.curr_y]

                self.update_position(2 if (cardinal == "N" or cardinal == "O") else -2, cardinal)

                return "choose"
            else:
                self.perform_move(0.0)
                self.curr_gps = [self.curr_x, self.curr_y]
                self.update_position(2 if (cardinal == "N" or cardinal == "O") else -2, cardinal)
                return "choose"


    def perform_move(self, vel):
        if self.measures.irSensor[left] >= 2.6:
            self.driveMotors(vel, vel-0.0025)
            self.calc_pos(vel, vel-0.0025)

        elif self.measures.irSensor[right] >= 2.6:
            self.driveMotors(vel-0.0025, vel)
            self.calc_pos(vel-0.0025, vel)

        else:
            if self.measures.compass in range(-10, 11, 1):
                if self.measures.compass < 0:
                    self.driveMotors(vel-0.0025, vel)
                    self.calc_pos(vel-0.0025, vel)
                else:
                    self.driveMotors(vel, vel-0.0025)
                    self.calc_pos(vel, vel-0.0025)
            elif self.measures.compass in range(80, 101, 1):
                if self.measures.compass < 90:
                    self.driveMotors(vel-0.0025, vel)
                    self.calc_pos(vel-0.0025, vel)
                else:
                    self.driveMotors(vel, vel-0.0025)
                    self.calc_pos(vel, vel-0.0025)
            elif self.measures.compass in range(-100, -79, 1):
                if self.measures.compass < -90:
                    self.driveMotors(vel-0.0025, vel)
                    self.calc_pos(vel-0.0025, vel)
                else:
                    self.driveMotors(vel, vel-0.0025)
                    self.calc_pos(vel, vel-0.0025)
            else:
                self.driveMotors(vel, vel)
                self.calc_pos(vel, vel)

    def calc_pos(self, lpot, rpot):
        self.curr_lpout = (lpot + self.prev_lpout)/2
        self.prev_lpout = self.curr_lpout

        self.curr_rpout = (rpot + self.prev_rpout)/2
        self.prev_rpout = self.curr_rpout

        lin = (self.curr_lpout + self.curr_rpout)/2

        rot = rpot - lpot
        self.prev_theta = math.radians(self.curr_theta) + rot ## compasso / bussula

        self.curr_x = self.prev_x + lin * math.cos(self.prev_theta)
        self.curr_y = self.prev_y + lin * math.sin(self.prev_theta)

        self.prev_x = self.curr_x
        self.prev_y = self.curr_y


    def rot_left(self, delta_ang, cardinal):
        state = ""
        self.errorPrev = 0
        if cardinal == "N":
            if self.measures.compass >= 88 and self.measures.compass <= 92:
                self.driveMotors(0.0, 0.0)
                self.curr_theta = 90
                state = "walk"
            elif (75 <= self.measures.compass < 88):
                self.driveMotors(-0.01, 0.01)
                state = "rot_left"
            elif (60 < self.measures.compass < 75):
                self.driveMotors(-0.02, 0.02)
                state = "rot_left"
            else:
                self.driveMotors(-0.09, 0.09)
                state = "rot_left"
        if cardinal == "S":
            if self.measures.compass >= -92 and self.measures.compass <= -88:
                self.driveMotors(0.0, 0.0)
                self.curr_theta = -90
                state = "walk"
            elif (-100 <= self.measures.compass < -92):
                self.driveMotors(-0.01, 0.01)
                state = "rot_left"
            elif (-115 < self.measures.compass < -100):
                self.driveMotors(-0.02, 0.02)
                state = "rot_left"
            else:
                self.driveMotors(-0.09, 0.09)
                state = "rot_left"
        if cardinal == "O":
            if self.measures.compass >= 178 or self.measures.compass <= -178:
                self.driveMotors(0.0, 0.0)
                self.curr_theta = -180
                state = "walk"
            elif (165 <= self.measures.compass < 178):
                self.driveMotors(-0.01, 0.01)
                state = "rot_left"
            elif (155 < self.measures.compass < 165):
                self.driveMotors(-0.02, 0.02)
                state = "rot_left"
            else:
                self.driveMotors(-0.09, 0.09)
                state = "rot_left"
        if cardinal == "E":
            if self.measures.compass >= -2 and self.measures.compass <= 2:
                self.driveMotors(0.0, 0.0)
                self.curr_theta = 0
                state = "walk"
            elif (-10 <= self.measures.compass < -2):
                self.driveMotors(-0.01, 0.01)
                state = "rot_left"
            elif (-25 < self.measures.compass < -10):
                self.driveMotors(-0.02, 0.02)
                state = "rot_left"
            else:
                self.driveMotors(-0.09, 0.09)
                state = "rot_left"
        #print("STATE: ", state)
        return state

    def rot_right(self, delta_ang, cardinal): # def
        state = ""
        self.errorPrev = 0
        if delta_ang == 180:
            if cardinal == "N":
                if self.measures.compass >= 178 or self.measures.compass <= -178:
                    self.driveMotors(-0.05, -0.05)
                    self.curr_theta = -180
                    state = "walk"
                elif (-178 < self.measures.compass <= -168):
                    self.driveMotors(0.01, -0.01)
                    state = "rot_right"
                elif (-168 < self.measures.compass < -155):
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"
                else:
                    self.driveMotors(0.09, -0.09)
                    state = "rot_right"
            if cardinal == "S":
                if self.measures.compass >= -2 and self.measures.compass <= 2:
                    self.driveMotors(0.0, 0.0)
                    self.curr_theta = 0
                    state = "walk"
                elif (2 < self.measures.compass <= 10):
                    self.driveMotors(0.01, -0.01)
                    state = "rot_right"
                elif (10 < self.measures.compass < 25):
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"
                else:
                    self.driveMotors(0.09, -0.09)
                    state = "rot_right"
            if cardinal == "O":
                if self.measures.compass >= -92 and self.measures.compass <= -88 :
                    self.driveMotors(0.0, 0.0)
                    self.curr_theta = -90
                    state = "walk"
                elif (-88 < self.measures.compass <= -75):
                    self.driveMotors(0.01, -0.01)
                    state = "rot_right"
                elif (-75 < self.measures.compass < -65):
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"
                else:
                    self.driveMotors(0.09, -0.09)
                    state = "rot_right"
            if cardinal == "E":
                if self.measures.compass >= 88 and self.measures.compass <= 92:
                    self.driveMotors(0.0, 0.0)
                    self.curr_theta = 90
                    state = "walk"
                elif (92 < self.measures.compass <= 100):
                    self.driveMotors(0.01, -0.01)
                    state = "rot_right"
                elif (100 < self.measures.compass < 115):
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"
                else:
                    self.driveMotors(0.09, -0.09)
                    state = "rot_right"
        else:
            if cardinal == "N":
                if self.measures.compass >= -92 and self.measures.compass <= -88:
                    self.driveMotors(0.0, 0.0)
                    self.curr_theta = -90
                    state = "walk"
                elif (-88 < self.measures.compass <= -75):
                    self.driveMotors(0.01, -0.01)
                    state = "rot_right"
                elif (-75 < self.measures.compass < -65):
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"
                else:
                    self.driveMotors(0.09, -0.09)
                    state = "rot_right"
            if cardinal == "S":
                if self.measures.compass >= 88 and self.measures.compass <= 92:
                    self.driveMotors(0.0, 0.0)
                    self.curr_theta = 90
                    state = "walk"
                elif (92 < self.measures.compass <= 100):
                    self.driveMotors(0.01, -0.01)
                    state = "rot_right"
                elif (100 < self.measures.compass < 115):
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"
                else:
                    self.driveMotors(0.09, -0.09)
                    state = "rot_right"
            if cardinal == "O":
                if self.measures.compass >= -2 and self.measures.compass <= 2:
                    self.driveMotors(0.0, 0.0)
                    self.curr_theta = 0
                    state = "walk"
                elif (2 < self.measures.compass <= 10):
                    self.driveMotors(0.01, -0.01)
                    state = "rot_right"
                elif (10 < self.measures.compass < 25):
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"
                else:
                    self.driveMotors(0.09, -0.09)
                    state = "rot_right"
            if cardinal == "E":
                if self.measures.compass >= 178 or self.measures.compass <= -178:
                    self.driveMotors(0.0, 0.0)
                    self.curr_theta = -180
                    state = "walk"
                elif (-178 < self.measures.compass <= -168):
                    self.driveMotors(0.01, -0.01)
                    state = "rot_right"
                elif (-168 < self.measures.compass < -155):
                    self.driveMotors(0.02, -0.02)
                    state = "rot_right"
                else:
                    self.driveMotors(0.09, -0.09)
                    state = "rot_right"

        return state

    def write_planning(self):
        if len(self.beacon_positions) > 1:
            print("Writing in myrob.path.....")
            with open(self.pathfile, 'w') as planfile:
                for i in [i+1 for i in range(len(self.beacon_positions)-1)]: ### get id for dictionary  
                    self.beacon_path = SearchTree(SearchProblem(Domain(self.map_connections), self.beacon_positions[i-1], self.beacon_positions[i]), 'a*').search(20000)[0]
                    planfile.write(''.join(str(self.beacon_positions.get(i-1)[0])) + ' ' 
                                    + ''.join(str(self.beacon_positions.get(i-1)[1]))) if i-1 == 0 else print("Ignoring")
                    for idx, cell in enumerate(self.beacon_path):  
                        planfile.write('\n' + ''.join(str(cell[0])) + ' ' + ''.join(str(cell[1])) + ' #{}'.format(str(i)) if idx == len(self.beacon_path)-1
                                    else '\n' + ''.join(str(cell[0])) + ' ' + ''.join(str(cell[1]))) 
                    if i+1 == int(self.nBeacons):
                        self.beacon_path = SearchTree(SearchProblem(Domain(self.map_connections), self.beacon_positions[i], self.beacon_positions[0]), 'a*').search(20000)[0]
                        for idx, cell in enumerate(self.beacon_path):
                            planfile.write(  '\n' + ''.join(str(cell[0])) + ' ' + ''.join(str(cell[1])))            

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

rob_name = "pClient4"
host = "localhost"
pos = 1
mapc = None
mapfile = "myrob.map" 
pathfile = "myrob.path" #[]    


for i in range(1, len(sys.argv),2):
    if (sys.argv[i] == "--host" or sys.argv[i] == "-h") and i != len(sys.argv) - 1:
        host = sys.argv[i + 1]
    elif (sys.argv[i] == "--pos" or sys.argv[i] == "-p") and i != len(sys.argv) - 1:
        pos = int(sys.argv[i + 1])
    elif (sys.argv[i] == "--robname" or sys.argv[i] == "-r") and i != len(sys.argv) - 1:
        rob_name = sys.argv[i + 1]
    elif (sys.argv[i] == "--map" or sys.argv[i] == "-m") and i != len(sys.argv) - 1:
        mapc = Map(sys.argv[i + 1])
    elif (sys.argv[i] == "--file" or sys.argv[i] == "-f" and i != len(sys.argv) -1):
        mapfile = sys.argv[i + 1] + ".map"; pathfile = sys.argv[i + 1] + ".path";      
    else:
        print("Unkown argument", sys.argv[i])   
        quit() 

if __name__ == '__main__':
    rob=MyRob(rob_name,pos,[0.0,90.0,-90.0,180.0],host,mapfile,pathfile)
    if mapc != None:
        rob.setMap(mapc.labMap)
        rob.printMap()

    rob.run()  
