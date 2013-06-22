
module cube_corner(){

rotate([180,0,45+180]){
translate([-(sqrt(2)*100/2),-(sqrt(2)*100/2),0]){
difference(){
rotate([0,0,45]){
difference(){
rotate([0,0,0]) cube(100);
translate([-0.1,-0.1,-0.1])rotate([0,0,45])cube(1000);
}
}
translate([-0.1,-0.1,-0.1])rotate([0,-45,0])cube(1000);
}
}
}
}