dist_cent=45;

rotate([90,0,0])
difference(){

//Pieza móvil
translate([30/2-10/2,7,-10])
cube([10,10,62]);

union(){
//Pasante vertical
translate([30/2,7+10/2,25])
cylinder(r=2.3,h=30);
//Cajera tuerca
translate([30/2-7/2,8.5,42])
cube([7,10,4]); 
}

}




//
//union(){
//cube([30,7,dist_cent]);
//
////Caja
//translate([30/2-16/2,7,0])
//cube([16,13,dist_cent-15]);
//translate([0,7,dist_cent/2-4])
//cube([30,13,8]);
//
////Soporte tuerca
//translate([30/2-15/2,7,dist_cent-4])
//cube([15,13,4]);
//
//}
//
//union(){
//
//
////agujeros tornillos
//translate([15/2,50,dist_cent/2])
//rotate([90,0,0])
//cylinder(r=2.2,h=500);
//
//translate([30-15/2,50,dist_cent/2])
//rotate([90,0,0])
//cylinder(r=2.2,h=500);
//
//
//
//}
//}