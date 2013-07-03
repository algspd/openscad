use <wings.scad>;
use <nose.scad>;
use <nose.scad>;
use <cabin_cover.scad>;

difference(){
union(){
    wings_socket();
    nose();
    //cover();

difference(){
union(){
difference(){
translate([0,60/2-10,14])
cube([155,10,10]);

translate([-1,60/2-10-20-6,13])
rotate([-55,0,0])
cube([157,30,30]);
}

mirror([0,1,0]){
difference(){
translate([0,60/2-10,14])
cube([155,10,10]);

union(){
translate([-1,60/2-10-20-6,13])
rotate([-55,0,0])
cube([157,30,30]);
}


}

}



}

}
}

cover_holes();
}



//translate([0,60/2-10,14])
//rotate([-70,0,0])
//cube([155,10,10]);