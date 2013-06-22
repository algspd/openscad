scale(0.98){
//tapa
difference(){
translate([0,0,50])
cube([90,90,5]);

union() {
translate([5,5,49])
cylinder(r=2,h=10);
translate([5+90-10,5+90-10,49])
cylinder(r=2,h=10);
translate([5+90-10,5,49])
cylinder(r=2,h=10);
translate([5,5+90-10,49])
cylinder(r=2,h=10);


translate([5,5,50+3+0.1])
cylinder(r=3.5,h=3);

translate([5+90-10,5+90-10,50+3+0.1])
cylinder(r=3.5,h=3);

translate([5+90-10,5,50+3+0.1])
cylinder(r=3.5,h=3);

translate([5,5+90-10,50+3+0.1])
cylinder(r=3.5,h=3);
}
}
}