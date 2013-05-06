
difference(){

union(){

// Bloques rodamientos

translate([112/2,0,-15/2-2-5])rotate([90,0,0]) cylinder(h=24*2+2,r=15/2+2);
translate([-(112/2),0,-15/2-2-5])rotate([90,0,0]) cylinder(h=24*2+2,r=15/2+2);

translate([-112/2-15/2-2,-(24*2+2),(-15/2-2-5)]) cube([19,24*2+2,-(-15/2-2-5)]);

translate([112/2-15/2-2,-(24*2+2),(-15/2-2-5)]) cube([19,24*2+2,-(-15/2-2-5)]);

}

union(){
// Rodamientos
translate([112/2,1,-15/2+0.5-2-5])rotate([90,0,0]) cylinder(h=24*2+4,r=15/2+0.5);
translate([-112/2,1,-15/2+0.5-2-5])rotate([90,0,0]) cylinder(h=24*2+4,r=15/2+0.5);
}
}

translate([-130/2,-50-60,-1])cube([130,24+24+2+60,2]);
translate([-130/2,-30,-5])cube([130,10,5]);
translate([-20/2,-50,-5])cube([20,50,5]);