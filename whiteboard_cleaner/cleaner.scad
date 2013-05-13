module semi(){


union(){
translate([0,-15,0]){
square ([20,40],center = true);
translate([-15,0,0])square ([10,80],center = true);
translate([10+15/2,0,0])square ([15,60],center = true);
translate([10+15/2,-60/2,0])circle(r = 15/2);
translate([10+15/2,60/2,0])circle(r = 15/2);
}
}
}

linear_extrude(height = 100, center = true, convexity = 100, twist = 0, slices = 100) {
difference(){
semi();
translate([10-15/2-2.5,-60/2-6,0])circle(r = 20/2);
translate([10-15/2-2.5,6,0])circle(r = 20/2);
translate([10-15/2-2.5,-15,0])circle(r = 13/2);
translate([17,-15,0])circle(r = 4);
translate([17,0,0])circle(r = 4);
translate([17,-30,0])circle(r = 4);
translate([17,15,0])circle(r = 4);
translate([17,-45,0])circle(r = 4);


}
}