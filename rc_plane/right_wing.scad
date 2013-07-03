 
use<rib.scad>;

module vrib(){
rotate([90,0,0])
rib(8,6);
}

module rods_right_wing(){

translate([0,10*0.42+52,0]){

// Rods
translate([0,-50,0])
rotate([-90,0,0])
translate([12,-11,-0.1])
cylinder(r=8/2,h=550);

translate([0,-50,0])
rotate([-90,0,0])
translate([146,-5,-0.1])
cylinder(r=6/2,h=550);

}

}

module right_wing(){

rods_right_wing();

translate([0,10*0.42+52,0]){

// Ribs
for(i=[0:6])
translate([0,i*((550-50)/6),0])vrib();
}

}

right_wing();