dist_cent=45;

rotate([0,-90,0]){
difference(){

union(){

//Pieza móvil
translate([30/2-10/2,7,-10])
cube([10-0.6,10-0.6,62]);

}

union(){
//Pasante vertical
translate([30/2,7+10/2,25])
cylinder(r=2.3,h=30);
//Cajera tuerca
translate([30/2-7/2,8.5,42])
cube([7,10,4]); 
}


}

difference(){
// L
translate([30/2-10/2,7,-10])
rotate([90,0,0])
cube([5,10,20]);

translate([30/2-10/2-1,7-1-17,-7])
rotate([90,0,90])
cylinder(r=1.5,h=30);

}

difference(){
// Soporte
translate([30/2-10/2,7-20,-10])
rotate([90,0,0])
cube([20,10,3]);

union(){
translate([30/2-10/2-1+8,7-1-17,-7])
rotate([90,0,0])
cylinder(r=1.5,h=30);

translate([30/2-10/2-1+18,7-1-17,-7])
rotate([90,0,0])
cylinder(r=1.5,h=30);

}

}

}