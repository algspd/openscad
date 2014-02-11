module carriage_no_screws(){
difference(){
union(){
import_stl("resina_carriage.stl");
cylinder(h=40,r=9,$fs=10);
}
union(){

// Bottom nut hole
cylinder(h=10,r=8.1,$fn=6);

// High nut hole
translate([0,0,20])cylinder(h=20,r=8.1,$fn=6);

// Rod hole
translate([0,0,-20])cylinder(h=100,r=9/2);

}
}
}
 

//carriage_no_screws();
