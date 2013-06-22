include <cube_corner.scad>;

rotate([90,0,0]){

rotate([-90,0,0])
translate([0,0,-5])
scale(0.3) cube_corner();

translate([100,0,-100])
rotate([-90,0,0])
translate([0,0,-5])
rotate([0,0,180])
scale(0.3) cube_corner();

translate([0,0,-100])
rotate([-90,0,0])
translate([0,0,-5])
rotate([0,0,-90])
scale(0.3) cube_corner();

translate([100,0,0])
rotate([-90,0,0])
translate([0,0,-5])
rotate([0,0,90])
scale(0.3) cube_corner();



rotate([90,90,0]){
difference(){
  difference(){
    cube(100);
    translate([5,5,-110]) cube([90,90,200]);
  }

  translate([50-30/2,50-4/2,80])
  cube([30,4,50]);

}

}

}
