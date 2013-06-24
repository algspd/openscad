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