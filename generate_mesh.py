# -*- coding: utf-8 -*-
"""
Created on Tue Feb 16 00:16:19 2016

@author: Shannon Glavin - sglavin@sas.upenn.edu (Python 3.4)
@author: Peter Madigan - pmadigan@berkeley.edu

Description:
clean up of mesh geo generators
"""
import io
import numpy as np
np.set_printoptions(threshold = np.nan)

# parameters to set
numPMTs = 16
mother = "LAr_inner"
wire_d = 1.5
wire_material = "copper"
mesh_z = [-160.00 + wire_d/2] * numPMTs
mesh_r = 19.05
gap    = 1.5

# initialize
fi = io.open("PMTINFO.ratdb")
plane_name = [""] * numPMTs
mesh_x     = [0.] * numPMTs
mesh_y     = [0.] * numPMTs
for line in fi.readlines():
    if line[0:2] == "x:" or line[0:2] == "y:":
        dim  = line[0]
        line = line.split("[")[1]
        line = line.split("]")[0]
        line = line.split(",")
        for i in range(numPMTs):
            plane_name[i] = "ground_mesh_" + str(i)
            if dim == "x":
                mesh_x[i] = float(line[i])
            elif dim == "y":
                mesh_y[i] = float(line[i])

# colors for visuals
color = [1.0, 1.0, 1.0, 0.5]

# filling wire lists
fo = open("MESHINFO.txt","w")
for pmt in range(numPMTs):
    lx = []
    ly = []
    lz = [mesh_z[pmt]] * 2 * (int((2 * mesh_r)/(wire_d + gap))+1)
    xdir = []
    ydir = []
    zdir = [0.0] * 2 * (int((2 * mesh_r)/(wire_d + gap))+1)
    for wire in range(int((2 * mesh_r)/(wire_d + gap))+1):
        lx.append(mesh_x[pmt] - mesh_r + wire_d/2 + (wire_d + gap) * wire)
        ly.append(mesh_y[pmt])
        xdir.append(0.0)
        ydir.append(1.0)
    for wire in range(int((2 * mesh_r)/(wire_d + gap))+1):
        lx.append(mesh_x[pmt])
        ly.append(mesh_y[pmt] - mesh_r + wire_d/2 + (wire_d + gap) * wire)
        xdir.append(1.0)
        ydir.append(0.0)
    print lx
    print ly
    print lz

    fo.write("{\nname: \"GEO\",\nindex: \"" + plane_name[pmt] +
             "\",\nvalid_begin: [0, 0],\nvalid_end: [0, 0],\n" + 
             "mother: \"" + mother +
             "\",\ntype: \"tubearray\",\nr_max: " + str(wire_d/2) +
             ",\nsize_z: " + str(mesh_r) +
             ",\npos_table: \"pos_table_" + plane_name[pmt] + "\"" +
             ",\norientation: \"manual\",\nmaterial: \"" + wire_material +
             "\",\ncolor: [ " + ', '.join(map(str, color)) +
             "],\n}\n\n")
    
    fo.write("{\nname: \"pos_table_" + plane_name[pmt] + "\",\nvalid_begin: [0, 0],\nvalid_end: [0, 0],\n");
    fo.write("x: [ " + ', '.join(map(str, lx)) + ", ]\n" + 
             "y: [ " + ', '.join(map(str, ly)) + ", ]\n" + 
             "z: [ " + ', '.join(map(str, lz)) + ", ]\n" + 
             "dir_x: [ " + ', '.join(map(str, xdir)) + ", ]\n" + 
             "dir_y: [ " + ', '.join(map(str, ydir)) + ", ]\n" + 
             "dir_z: [ " + ', '.join(map(str, zdir)) + ", ]\n" + 
             "}\n\n")  
fo.close()             
