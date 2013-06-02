pi = 3.14159;
capacity = 0.0005; // cubic meters
heightp = 0.17;   // meters
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
  translate([0,0,10]){
    rotate([45,0,0])
    cylinder(r=t*2,h=100);
    translate([0,-sin(45)*100,sin(45)*100])
    sphere(t*2);
    translate([0,-sin(45)*100,sin(45)*100])
    cylinder(r=t*2,h=80);

    difference(){
      translate([0,-sin(45)*100,sin(45)*100+80])
      rotate([-90,0,0])
      cylinder(r=t*2,h=sin(45)*100-r-1);
      translate([-10,-sin(45)*100,sin(45)*100+80-10])cube([20,80,10]);
    }
    translate([-t*2,-sin(45)*100,sin(45)*100+80-4])cube([t*2*2,sin(45)*100-r-1,4]);
    translate([0,-sin(45)*100,sin(45)*100+80]) sphere(t*2);
  }
}




difference(){
exterior(height,radious,wall_tick);
interior(height,radious);
};
handle(height,radious,wall_tick);