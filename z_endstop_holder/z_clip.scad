dist_cent=45;

rotate([90,0,0])
difference(){

union(){


// Soporte clip (tornillos)
translate([0,-11+30,45/2-10/2])
cube([30,10,10]);

translate([10,0,0]){


// Brazo clip
translate([30-10,-11+30,45/2-10/2+5-1])
cube([30+10,10,2]);

translate([-1,0,0])
difference(){
// Clip
translate([30+30-10-5,-11+30,45/2-10/2+5-1-10])
cube([30,10,10]);


translate([30+30-10,-11+30-1,45/2-10/2+5-1-5])
rotate([0,65,0])
translate([0,0,-10])
cube([100,15,50]);
}
}
}


union(){
//agujeros tornillos
translate([15/2,50,dist_cent/2])
rotate([90,0,0])
cylinder(r=2.2,h=500);
translate([30-15/2,50,dist_cent/2])
rotate([90,0,0])
cylinder(r=2.2,h=500);
}
}

