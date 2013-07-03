
use <wings.scad>
use <cabin_cover.scad>
use <cabin.scad>

module nose(){


translate([0,0,-1])
rotate([45,0,180])
rotate([0,90,0])

cylinder(r1=40,r2=10,h=30,$fn=4);


}

nose();
cabin_complete();