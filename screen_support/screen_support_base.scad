difference(){
 difference(){
  union(){
   translate([0,0,0]){
    cube([105,20,100],center=true);
   }
  }
  union(){
   translate([(95/2)-7,0,-100/2+5]){
    cylinder(h = 200, r=4);
   }
   translate([(-95/2)+7,0,-100/2+5]){
    cylinder(h = 200, r=4);
   }
  }
 }
 rotate(a=[10,0,0]){
  translate([0,10,0]){
   cube([126,20,120],center=true);
  }
 }
}


