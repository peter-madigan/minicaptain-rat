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
r_max: 825.50,
r_min: 725.50,
size_z: 398.96,
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
r_max: 725.50,
size_z: 398.96,
position: [0.0, 0.0, 0.0],
material: "liquid_Ar",
color: [0.0, 0.0, 1.0, 0.1],
drawstyle: "solid"
}

{
name: "GEO",
index: "TPC",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "LAr",
//type: "polygon",
//size_z: 10.0,
//poly_table: "TPCINFO",
type: "tube",
r_max: 609.6,
r_min: 599.6,
size_z: 150.0,
position: [0.0, 0.0, -206.09],
material: "acrylic_white",
color: [0.0, 0.5, 0.0, 0.9],
drawstyle: "solid"
}

{ 
name: "GEO", 
index: "pmts", 
enable: 1,
valid_begin: [0, 0], 
valid_end: [0, 0], 
mother: "LAr", 
type: "pmtarray",
pmt_model: "r8520",
pmt_detector_type: "idpmt",
sensitive_detector: "/mydet/pmt/inner", 
efficiency_correction: 1.000,  
pos_table: "PMTINFO_inner",
orientation: "manual",
} 




