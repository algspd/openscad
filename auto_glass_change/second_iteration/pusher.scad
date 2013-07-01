
difference(){

union(){

// Bloques rodamientos

translate([120/2,0,0])rotate([90,0,0]) cylinder(h=24*2+2,r=15/2+2);
translate([-(120/2),0,0])rotate([90,0,0]) cylinder(h=24*2+2,r=15/2+2);

//translate([-140/2-15/2-2,-(24*2+2),(-15/2-2-5)]) cube([19,24*2+2,-(-15/2-2-5)]);

//translate([140/2-15/2-2,-(24*2+2),(-15/2-2-5)]) cube([19,24*2+2,-(-15/2-2-5)]);

translate([-140/2,-24*2-2,3])cube([140,100,4+2-3]);

}

union(){
// Rodamientos
translate([120/2,-1,0])rotate([90,0,0]) cylinder(h=24*2+4,r=15/2);
translate([-120/2,-1,0])rotate([90,0,0]) cylinder(h=24*2+4,r=15/2);

// Varillas
translate([120/2,500,0])rotate([90,0,0]) cylinder(h=1000,r=4.2);
translate([-120/2,500,0])rotate([90,0,0]) cylinder(h=1000,r=4.2);

translate([-140/2,-24*2-2,6.1])cube([140,100,2.1+100]);

}
}

//translate([-140/2-19/2,-50,-1])cube([140+19,24+24+2,2]);
//translate([-140/2,-20,-5])cube([140,20,5]);
//translate([-20/2,-50,-10])cube([20,50,10]);
