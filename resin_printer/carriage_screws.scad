include <resina_carriage.scad>
include <carriage_tapa.scad>

module arista(){
  translate([20/2-4/2,21.5,65/2])cube([4,4,65],center=true);
}

module ala(){
  translate([-20/2-9/2,24.75-1.5,65/2])cube([10,8,65],center=true);
}

module tapas(){
  difference(){
    translate([0,-70+12-1,0])tapa();
    mirror([0,1,0])translate([-20/2-9/2+3,24.75-1.5+7,65/2])cube([10,8,65],center=true);
  }
  translate([9,35-4.5,65/2])cube([2,4,65],center=true);
  translate([-20/2-9/2,24.75-2.5+15,65/2])cube([10,7,65],center=true);
}



difference(){
  union(){
    carriage_no_screws();
    arista();
    mirror([1,0,0])arista();
    mirror([0,1,0])arista();
    mirror([1,0,0])mirror([0,1,0])arista();

    ala();
    mirror([0,1,0])ala();
    
    tapas();
    mirror([0,1,0])tapas();
  }

  union(){
    // Screw holes
    translate([-13.5,100,50])rotate([90,0,0])cylinder(r=2.5,h=200);
    translate([-13.5,100,15])rotate([90,0,0])cylinder(r=2.5,h=200);

    // Fixing crew holes
    translate([-10,14,10])rotate([0,90,0])cylinder(r=2.5,h=200);
    mirror([0,1,0])translate([-10,14,10])rotate([0,90,0])cylinder(r=2.5,h=200);
    translate([-10,14,30])rotate([0,90,0])cylinder(r=2.5,h=200);
    mirror([0,1,0])translate([-10,14,30])rotate([0,90,0])cylinder(r=2.5,h=200);

    // Remove bearing registers
    translate([0,30,0])cylinder(r=16/2,h=10,center=true);
    translate([0,30,65])cylinder(r=16/2,h=10,center=true);
    translate([0,-30,0])cylinder(r=16/2,h=10,center=true);
    translate([0,-30,65])cylinder(r=16/2,h=10,center=true);

  }
}



