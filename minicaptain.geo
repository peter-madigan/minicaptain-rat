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
drawstyle: "solid"
}

{
name: "GEO",
index: "cryostat",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "world",
type: "tube",
r_max: 750.0,
size_z: 500.0,
position: [0.0, 0.0, 0.0],
material: "stainless_steel",
color: [0.5, 0.5, 0.5, 0.9],
drawstyle: "solid"
}

{
name: "GEO",
index: "outer_LAr", 
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "cryostat",
type: "tube",
r_max: 725.0,
size_z: 475.0,
position: [0.0, 0.0, 0.0],
material: "water",
color: [0.0, 0.0, 1.0, 0.1],
drawstyle: "solid"
}

{
name: "GEO",
index: "TPC",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "outer_LAr",
type: "tube",
r_max: 500.0,
size_z: 150.0,
position: [0.0, 0.0, 0.0],
material: "polyethylene",
color: [0.0, 1.0, 0.0, 0.9],
drawstyle: "solid"
}

{
name: "GEO",
index: "inner_LAr",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "TPC",
type: "tube",
r_max: 490.0,
size_z: 140.0,
position: [0.0, 0.0, 0.0],
material: "water",
color: [0.0, 0.0, 1.0, 0.1],
drawstyle: "solid"
}

{ 
name: "GEO", 
index: "pmts", 
enable: 1,
valid_begin: [0, 0], 
valid_end: [0, 0], 
mother: "outer_LAr", 
type: "pmtarray",
pmt_model: "r8520",
pmt_detector_type: "idpmt",
sensitive_detector: "/mydet/pmt/inner", 
efficiency_correction: 1.000,  
pos_table: "PMTINFO_inner",
orientation: "manual",
} 




