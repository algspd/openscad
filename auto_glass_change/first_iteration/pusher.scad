rotate([-90,0,0]){
difference(){

union(){

// Bloques rodamientos

translate([140/2,0,-15/2-2-5])rotate([90,0,0]) cylinder(h=24*2+2,r=15/2+2);
translate([-(140/2),0,-15/2-2-5])rotate([90,0,0]) cylinder(h=24*2+2,r=15/2+2);

translate([-140/2-15/2-2,-(24*2+2),(-15/2-2-5)]) cube([19,24*2+2,-(-15/2-2-5)]);

translate([140/2-15/2-2,-(24*2+2),(-15/2-2-5)]) cube([19,24*2+2,-(-15/2-2-5)]);

}

union(){
// Rodamientos
translate([140/2,1,-15/2+0.5-2-5])rotate([90,0,0]) cylinder(h=24*2+4,r=15/2+0.5);
translate([-140/2,1,-15/2+0.5-2-5])rotate([90,0,0]) cylinder(h=24*2+4,r=15/2+0.5);
}
}

translate([-140/2-19/2,-50,-1])cube([140+19,24+24+2,2]);
translate([-140/2,-20,-5])cube([140,20,5]);
translate([-20/2,-50,-10])cube([20,50,10]);
}