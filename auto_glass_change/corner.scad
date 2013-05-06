module glass_limits(){
 translate([-9,-11-22,0])cube([18,22,55]);
// translate([-9,-11-22,0])cube([18,3,100]);
// translate([-9,-11-22,100])cube([18,44,1]);

 translate([-9,11,0])cube([18,22,55]);

}

module corner_base(){	

 translate([-9,-11,0])cube([18,22,55]);
}

module corner_holes(){
 translate([-11,-11,0]){
  // Bottom hole
  translate([0,11,10]) rotate([0,90,0]) translate([0,0,-5]) cylinder(h = 270, r=4.4, $fn=30);
  // Top hole
  translate([0,11,30]) rotate([0,90,0]) translate([0,0,-5]) cylinder(h = 270, r=4.4, $fn=30);
  // Middle hole
  translate([11,0,20]) rotate([0,0,90]) rotate([0,90,0]) translate([0,0,-100]) cylinder(h = 270, r=5.4, $fn=30);

// Top hole
  translate([5.4*2,-22/2,20+5.4*2+1]) rotate([0,0,0]) cylinder(h = 270, r=5.4, $fn=30);

  translate([0,33,55]) rotate([90,90,90]) cylinder(h = 270, r=4.2);

translate([11+4.5/2,-10+50,55-4.2-4.5])  rotate([0,0,90]) cube([50,4,2.5]);

translate([11,20,70]){ rotate([0,0,0]) cube([4,2.5,50],center=true);}
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