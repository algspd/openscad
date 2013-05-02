difference(){
 rotate(a=[90,0,0]){
  difference(){
   union(){
    cube([95,145,20], center=true);
    translate([(-95/2)+7,0,0]){
     rotate(a=[0,90,90]){
      cylinder(h = 145, r=12,center=true);
     }
    }
    translate([(95/2)-7,0,0]){
     rotate(a=[0,90,90]){
      cylinder(h = 145, r=12,center=true);
     }
    }
   }
   union(){
    translate([(95/2)-7,0,0]){
     rotate(a=[0,90,90]){
      cylinder(h = 200, r=4,center=true);
     }
    }
    translate([(-95/2)+7,0,0]){
     rotate(a=[0,90,90]){
      cylinder(h = 200, r=4,center=true);
     }
    }
    translate([(-55/2),125/2,0]){
     cylinder(h = 200, r=2.5,center=true);
    }
    translate([(55/2),-125/2,0]){
     cylinder(h = 200, r=2.5,center=true);
    }
    translate([(55/2),125/2,0]){
     cylinder(h = 200, r=2.5,center=true);
    }
    translate([(-55/2),-125/2,0]){
     cylinder(h = 200, r=2.5,center=true);
    }
    translate([(-55/2),125/2,6]){
     cylinder(h = 5, r=4);
    }
    translate([(55/2),-125/2,6]){
     cylinder(h = 5, r=4);
    }
    translate([(55/2),125/2,6]){
     cylinder(h = 5, r=4);
    }
    translate([(-55/2),-125/2,6]){
     cylinder(h = 5, r=4);
    }
   }
  }
 }
 translate([0,100/2+10,0]){
  cube([100,100,200],center=true);
 }
}