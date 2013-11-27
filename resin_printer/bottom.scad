include<resina_carriage.scad>;

translate([0,0,100])carriage();

module un_agujero(){
  translate([31/2,31/2,-10])cylinder(r=3.5/2,h=100,center=true);
}

module agujeros_nema(){
  mirror([0,0,0])un_agujero();
  mirror([1,0,0])un_agujero();
  mirror([0,1,0])un_agujero();
  mirror([1,1,0])un_agujero();
  cylinder(r=23/2,h=100,center=true);
}


difference(){
union(){
  cube([45,45,50],center=true);
  translate([])cube([16,80,50],center=true);

  // Base
  translate([0,0,-25])cube([60,90,1.5],center=true);
}

union(){
  translate([0,30,0])cylinder(r=4,h=150);
  translate([0,-30,0])cylinder(r=4,h=150);
  translate([0,0,-8])cube([42.5,42.5,60],center=true);

  agujeros_nema();

  // agujero_cables
  translate([-20,0,-24])cube([20,20,7],center=true);

}
}



