module corner_base(){	

 translate([-11,-11,0])cube([44,22,50]);

}

module corner_holes(){
 translate([-11,-11,0]){


  // Middle hole
 translate([11,0,20]) rotate([0,0,90]) rotate([0,90,0]) translate([0,0,-100]) cylinder(h = 270, r=4.4, $fn=30);
//TopTop hole
 translate([11,0,40]) rotate([0,0,90]) rotate([0,90,0]) translate([0,0,-100]) cylinder(h = 270, r=4.4, $fn=30);

// Top hole
  translate([5.4*2,-22/2,20+5.4*2+1]) rotate([0,0,0]) cylinder(h = 270, r=5.4, $fn=30);

  translate([0,33,55]) rotate([90,90,90]) cylinder(h = 270, r=4.2);
}

 translate([22-18/2,-22/2+2,20])cube([18,18,52]);

 translate([22-18/2+9,0,-1])cylinder(r=2.2,h=1000,$fn=30);

// Nut hole
 translate([22-18/2+9,0,-15])cylinder(r=6.5/2,h=30,$fn=6);

}

// Final part
module corner(){

 // Rotate the part for better printing
 difference(){
  union(){
   corner_base();

  }
  corner_holes();

 }
}

corner();