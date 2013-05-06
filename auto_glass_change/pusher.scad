
// PRUSA iteration3
// Y frame corners
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module glass_limits(){
 translate([-9,-11-22,0])cube([18,22,47]);
 translate([-9,-11-22,0])cube([18,3,100]);
// translate([-9,-11-22,100])cube([18,44,1]);
}


module corner_base(){	

 translate([-9,-11,0])cube([18,22,47]);
}

module corner_holes(){
 translate([-11,-11,0]){
  // Bottom hole
  translate([0,11,10]) rotate([0,90,0]) translate([0,0,-5]) cylinder(h = 270, r=4.4, $fn=30);
  // Top hole
  translate([0,11,30]) rotate([0,90,0]) translate([0,0,-5]) cylinder(h = 270, r=4.4, $fn=30);
  // Middle hole
  translate([11,0,20]) rotate([0,0,90]) rotate([0,90,0]) translate([0,0,-100]) cylinder(h = 270, r=5.4, $fn=30);



  // Top smooth rod insert
  // Smooth rod place
  translate([11,2,45]) rotate([0,90,90]) cylinder(h = 270, r=4.2, $fn=30); 
  // Ziptie
  translate([-5,9,39])  cube([30,3.5,2]);
 }
}




// Final part
module corner(){

 // Rotate the part for better printing
 translate([0,0,11]) rotate([-90,0,0]) difference(){
  union(){
   corner_base();
   glass_limits();
  }
  corner_holes();

 }
}


corner();


