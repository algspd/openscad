

module cover(){
difference(){
translate([5+2.5,-58/2,25.1])
cube([140,58,2]);

union(){

translate([5+2.5+4,-58/2+4,20])
cylinder(r=2,h=15);
translate([5+2.5-4+140,-58/2-4+58,20])
cylinder(r=2,h=15);
translate([5+2.5-4+140,-58/2+4,20])
cylinder(r=2,h=15);
translate([5+2.5+4,-58/2-4+58,20])
cylinder(r=2,h=15);

}
}

}



cover();