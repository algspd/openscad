

module cover(){
difference(){
translate([5-2.2,-58/2-0.5,25.1])
cube([150,59,2]);

union(){

translate([7.5,-58/2+4,20])
cylinder(r=2,h=15);
translate([7.5-12+140+5,-58/2-4+58,20])
cylinder(r=2,h=15);
translate([7.5-12+140+5,-58/2+4,20])
cylinder(r=2,h=15);
translate([7.5,-58/2-4+58,20])
cylinder(r=2,h=15);

}
}

}

module cover_holes(){
translate([7.5,-58/2+4,12])
cylinder(r=2,h=15);
translate([7.5-12+140+5,-58/2-4+58,12])
cylinder(r=2,h=15);
translate([7.5-12+140+5,-58/2+4,12])
cylinder(r=2,h=15);
translate([7.5,-58/2-4+58,12])
cylinder(r=2,h=15);
}

module cover_sockets(){
difference(){
union(){
translate([7.5,-58/2+4,12])
cube([7,7,20],center=true);
translate([7.5-12+140+5,-58/2-4+58,12])
cube([7,7,20],center=true);
translate([7.5-12+140+5,-58/2+4,12])
cube([7,7,20],center=true);
translate([7.5,-58/2-4+58,12])
cube([7,7,20],center=true);
}
cover_holes();
}
}



cover();
//cover_holes();
cover_sockets();