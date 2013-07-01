difference(){
 translate([22-17.5/2,-22/2+2,20])cube([17.5,17.5,52]);

union(){
 translate([22-17.5/2+9,0,-1])cylinder(r=2.2,h=100,$fn=30);
 translate([22-17.5/2+9,0,5+20])cylinder(r=4,h=100,$fn=30);
 translate([0,0,52-1.5+20]) rotate([0,90,0])cylinder(r=4,h=1000,$fn=100);
} 

}