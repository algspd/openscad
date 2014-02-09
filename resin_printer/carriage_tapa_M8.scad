include <resina_carriage_M8.scad>

module arista(){
  translate([20/2-4/2,21.5,65/2])cube([4,4,65],center=true);
}

module ala(){
    translate([20/2,24.75,65/2])cube([4,10.5,65],center=true);
}

module tapa(){
difference(){
union(){
carriage_no_screws();
arista();
mirror([1,0,0])arista();
}

translate([0,-30,0])cube([100,100,200],center=true);
}
}

