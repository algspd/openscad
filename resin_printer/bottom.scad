include<resina_carriage.scad>;

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

rotate([180,0,0])

difference(){
union(){
  cube([48,48,50],center=true);
  
  // Registros varillas lisas
  translate([17.5/2,0,0])cube([16+17.5,80,50],center=true);

  // Base
  //translate([0,0,-25])cube([60,90,1.5],center=true);

  // Registro perfil alu
  translate([48/2+10,0,0])cube([20,30,50],center=true);

}

union(){
  translate([0,30,0])cylinder(r=4,h=150);
  translate([0,-30,0])cylinder(r=4,h=150);
  translate([0,0,-8])cube([42.5,42.5,60],center=true);

  agujeros_nema();

  // agujero_cables
  translate([-20,0,-24])cube([20,20,7],center=true);

  // hueco perfil
  translate([48/2+10,0,0])cube([20,20,50],center=true);
  // tornillos perfil
  translate([48/2+10,0,12.5])rotate([90,0,0])cylinder(r=2.5,h=100,center=true);
  translate([48/2+10,0,-12.5])rotate([90,0,0])cylinder(r=2.5,h=100,center=true);

}
}

