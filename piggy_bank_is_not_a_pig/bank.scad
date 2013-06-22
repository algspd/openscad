rotate([180,0,0])
difference(){
  difference(){
    cube(100);
    translate([5,5,5]) cube(90);
  }
  translate([50-30/2,50-4/2,80])
  cube([30,4,50]);
}
