module corner_base(){	

 translate([-9,-11,0])cube([18,29,55]);
 // Support
 translate([-9,0,55])cube([18,18,12]);
// Guide
 translate([-9,15,55])cube([18,3,30]);
// Hopper
 translate([-9,15,85])rotate([-20,0,0])cube([18,3,25]); 
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