module carriage(){
difference(){
union(){
import("resina_carriage.stl");
cylinder(h=40,r=9,$fs=10);
}
union(){
cylinder(h=10,r=5,$fn=6);
translate([0,0,20])cylinder(h=20,r=5,$fs=6);
translate([0,0,-20])cylinder(h=100,r=3);
}
}
}

carriage();
