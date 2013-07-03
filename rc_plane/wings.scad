 
use<left_wing.scad>;
use<right_wing.scad>;

dihedral_angle=10;

module both_wings(){
translate([0,10,0])
rotate([-dihedral_angle/2,0,0])
left_wing();
translate([0,-10,0])
rotate([dihedral_angle/2,0,0])
right_wing();


}



module wings_socket(){
difference(){

union(){


translate([0,-70/2,-3])
cube([155,70,30]);



//translate([0,70/2,30/2-3])
//rotate([90,0,0])
//cylinder(r=30/2,h=100);
//
//translate([-30/2,-70/2,-3])
//cube([150,150,30/2]);

}


union(){

translate([-30,70/2,-10])
rotate([dihedral_angle/2,0,0])
cube([200,200,40]);

translate([-30,-70/2-200,5])
rotate([-dihedral_angle/2,0,0])
cube([200,200,40]);

translate([20,-60/2,-5])
cube([120,60,100]);

translate([0,10,0])
rotate([-dihedral_angle/2,0,0])
rods_left_wing();
translate([0,-10,0])
rotate([dihedral_angle/2,0,0])
rods_right_wing();



translate([5+2.5+4,-58/2+4,20])
cylinder(r=2.1,h=15);
translate([5+2.5-4+140,-58/2-4+58,20])
cylinder(r=2.1,h=15);
translate([5+2.5-4+140,-58/2+4,20])
cylinder(r=2.1,h=15);
translate([5+2.5+4,-58/2-4+58,20])
cylinder(r=2.1,h=15);





}
}

}

wings_socket();
both_wings();

