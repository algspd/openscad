dist_cent=45;

rotate([0,-90,0])
difference(){

union(){
difference(){

translate([0,-11,0])
cube([30,22,dist_cent]);

union(){
translate([-1,0,0])
rotate([0,90,0])
cylinder(r=4,h=500);

translate([-1,0,dist_cent])
rotate([0,90,0])
cylinder(r=4,h=500);
}

translate([-1,-10+4,8])
cube([1000,30-10,45-8-8]);

}

translate([0,-11,45/2-10/2])
cube([30,15,10]);
}

//agujeros tornillos
translate([15/2,50,dist_cent/2])
rotate([90,0,0])
cylinder(r=2.2,h=500);


translate([30-15/2,50,dist_cent/2])
rotate([90,0,0])
cylinder(r=2.2,h=500);

}
