
use <wings.scad>
use <cabin_cover.scad>

module cabin(){

difference(){


translate([0,-70/2,-30])
cube([155,70,30]);

union(){
translate([5,-65/2,-27])
cube([145,65,1000]);

translate([-20-1,-60/2,-20])
cube([50,60,40]);

}

}

}

module cabin_complete(){
cabin();


difference(){

difference(){
wings_socket();
cover();
}

}
}

//both_wings();
cabin_complete();


