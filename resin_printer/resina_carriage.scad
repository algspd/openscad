module carriage_no_screws(){
difference(){
union(){
import("resina_carriage.stl");
cylinder(h=40,r=9,$fs=10);
}
union(){

// Bottom nut hole
cylinder(h=10,r=5.1,$fs=6);

// High nut hole
translate([0,0,20])cylinder(h=20,r=5.1,$fs=6);

// Rod hole
translate([0,0,-20])cylinder(h=100,r=3);

}
}
}
 

//carriage_no_screws();
