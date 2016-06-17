// CENTER OF TPC: [0,0,-123.11]

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
r_max:  673.1,
size_z: 529.53,
position: [0.0, 0.0, 0.0],
material: "liquid_Ar",
//material: "TPB",
color: [0.0, 0.0, 1.0, 0.1],
drawstyle: "solid"
}

{
name: "GEO",
index: "TPC",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "LAr",
type: "polygon",
poly_table: "TPCINFO",
size_z: 160.76,
position: [0.0, 0.0, -123.11],
material: "FR4",
color: [0.0, 0.5, 0.0, 0.5],
drawstyle: "solid"
}

{
name: "GEO",
index: "LAr_inner", 
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "TPC",
type: "polygon",
poly_table: "INNERINFO",
size_z: 159.24,
position: [0.0, 0.0, 0.0],
material: "liquid_Ar",
color: [0.0, 0.0, 1.0, 0.1],
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

{
name: "GEO",
index: "windows",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "TPC",
type: "tubearray",
pos_table: "WINDOWINFO",

size_z: 0.76,
r_max: 19.05,

material: "glass",
color: [1.0, 1.0, 0.8, 0.1],
drawstyle: "solid",

orientation: "manual",
}

{
name: "GEO",
index: "TPB_coating",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "TPC",
type: "tubearray",
pos_table: "TPBINFO",

size_z: 0.05,
r_max: 19.05,

material: "TPB",
color: [0.0, 1.0, 0.0, 0.5],
drawstyle: "solid",

orientation: "manual",
}
