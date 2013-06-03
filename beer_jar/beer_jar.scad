pi = 3.14159;
capacity = 0.0006; // cubic meters
heightp = 0.16;   // meters
radiousp = sqrt(capacity/(heightp*pi)); //meters
wall_tick=3;

// Variable conversion to mm//
height = heightp*1000;
radious = radiousp*1000;

module interior(h,r){
  translate([0,0,1]){
    difference(){
    cylinder(h=h,r=r);
    cylinder(h=25,r=r);
  }
  difference(){
    translate([0,0,25])sphere(r);
    translate([0,0,-100])cylinder(h=100,r=r+1);
  }
  }
}

module exterior(h,r,t){
  cylinder(h=h,r=r+t,$fn = 100);
  // Border
  translate([0, 0, h])
  rotate_extrude(convexity = 10,$fn = 100)
  translate([r, 0, 0])
  circle(r = t, $fn = 70);
}

module handle(h,r,t){
  translate([0,0,-5]){

    translate([0,-sin(45)*100,sin(45)*100])
    rotate([45+180,0,0])
    cylinder(r=t*2,h=sin(45)*100);


    translate([0,-sin(45)*100,sin(45)*100])
    sphere(t*2);
    translate([0,-sin(45)*100,sin(45)*100])
    cylinder(r=t*2,h=60);

    translate([0,-sin(45)*100,sin(45)*100+60])
    rotate([-90,0,0])
    cylinder(r=t*2,h=sin(45)*100-r-1);
    translate([-t*2,-sin(45)*100,sin(45)*100+60-4])cube([t*2*2,sin(45)*100-r-1,4]);
    translate([0,-sin(45)*100,sin(45)*100+60]) sphere(t*2);
  }
}




difference(){
union(){
exterior(height,radious,wall_tick);
handle(height,radious,wall_tick);
}

interior(height,radious);
};
