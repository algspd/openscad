
module nut(){
// Nut (M8)
cylinder(r=15/2, h=7.5, $fn = 6, center=[0,0]);
}

rotate([180,0,0]){
difference(){
union(){
difference(){
// Main cylinder
cylinder(r1=15,r2=10,h=30);

// Nut hole
translate([0,0,5])
union(){
translate([20,0,0])
nut();
translate([10,0,0])
nut();
translate([5,0,0])
nut();
nut();
translate([-1,0,0])
nut();
}

}

difference(){
sphere(r=15);
translate([-50,-50,0]) cube(100);
}
}

// Rod hole
translate([0,0,-3])
cylinder(r=4.7,h=100);

}
}