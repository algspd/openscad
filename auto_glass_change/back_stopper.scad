module corner_base(){	

 translate([0,-11,0])cube([10,29,45]);
 // Support
 translate([0,-3,45])cube([10,21,52]);

}

module corner_holes(){
 translate([-11,-11,0]){

  // Bottom hole
  translate([0,11,10]) rotate([0,90,0]) translate([0,0,-5]) cylinder(h = 270, r=4.4, $fn=30);
  // Top hole
  translate([0,11,30]) rotate([0,90,0]) translate([0,0,-5]) cylinder(h = 270, r=4.4, $fn=30);

 }
}

// Final part
module corner(){

 // Rotate the part for better printing
 translate([0,0,11]) rotate([-90,90,0]) difference(){

  corner_base();
  corner_holes();

 }
}

corner();