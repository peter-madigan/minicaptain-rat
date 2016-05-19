{
name: "GEO",
index: "world", 
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "",
type: "box",
size: [1000.0, 1000.0, 1000.0],
position: [0.0, 0.0, 0.0],
material: "air",
color: [1.0, 1.0, 1.0, 0.05],
drawstyle: "wireframe"
}

{
name: "GEO",
index: "cryostat",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "world",
type: "tube",
r_max:  825.50,
size_z: 629.53,
position: [0.0, 0.0, 0.0],
material: "stainless_steel",
color: [0.5, 0.5, 0.5, 0.9],
drawstyle: "solid"
}

{
name: "GEO",
index: "LAr", 
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "cryostat",
type: "tube",
r_max:  673.10,
size_z: 529.53,
position: [0.0, 0.0, 0.0],
material: "liquid_Ar",
color: [0.0, 0.0, 1.0, 0.1],
drawstyle: "solid"
}

{
name: "GEO",
index: "TPC_top",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "LAr",
type: "polygon",
poly_table: "TPCINFO_top",
size_z: 10.0,
position: [0.0, 0.0, 122.35],
material: "acrylic_white",
color: [0.0, 0.5, 0.0, 0.5],
drawstyle: "solid"
}

{
name: "GEO",
index: "TPC_1",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "LAr",
type: "box",
size: [304.8, 150.0, 10.0],
position: [457.2, 263.965, -32.65],
rotation: [90.0, -60.0, 0.0],
material: "acrylic_white",
color: [0.0, 0.5, 0.0, 0.5],
drawstyle: "solid"
}

{
name: "GEO",
index: "TPC_2",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "LAr",
type: "box",
size: [304.8, 150.0, 10.0],
position: [457.2, -263.965, -32.65],
rotation: [90.0, 60.0, 0.0],
material: "acrylic_white",
color: [0.0, 0.5, 0.0, 0.5],
drawstyle: "solid"
}

{
name: "GEO",
index: "TPC_3",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "LAr",
type: "box",
size: [304.8, 150.0, 10.0],
position: [0.0, -527.93, -32.65],
rotation: [90.0, 0.0, 0.0],
material: "acrylic_white",
color: [0.0, 0.5, 0.0, 0.5],
drawstyle: "solid"
}

{
name: "GEO",
index: "TPC_4",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "LAr",
type: "box",
size: [304.8, 150.0, 10.0],
position: [0.0, 527.93, -32.65],
rotation: [90.0, 0.0, 0.0],
material: "acrylic_white",
color: [0.0, 0.5, 0.0, 0.5],
drawstyle: "solid"
}

{
name: "GEO",
index: "TPC_5",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "LAr",
type: "box",
size: [304.8, 150.0, 10.0],
position: [-457.2, -263.965, -32.65],
rotation: [90.0, -60.0, 0.0],
material: "acrylic_white",
color: [0.0, 0.5, 0.0, 0.5],
drawstyle: "solid"
}

{
name: "GEO",
index: "TPC_6",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "LAr",
type: "box",
size: [304.8, 150.0, 10.0],
position: [-457.2, 263.965, -32.65],
rotation: [90.0, 60.0, 0.0],
material: "acrylic_white",
color: [0.0, 0.5, 0.0, 0.5],
drawstyle: "solid"
}

{ 
name: "GEO", 
index: "pmts", 
valid_begin: [0, 0], 
valid_end: [0, 0], 
mother: "LAr", 
type: "pmtarray",
pmt_model: "r8520",
pmt_detector_type: "idpmt",
sensitive_detector: "/mydet/pmt/inner", 
efficiency_correction: 1.000,  
pos_table: "PMTINFO",
orientation: "manual",
} 




