//include <resina_carriage.scad>;

module un_agujero(){
  translate([31/2,31/2,-10])cylinder(r=4.6/2,h=100,center=true);
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
  cube([20,60,50],center=true);
  translate([0,40-10,0])cylinder(r=10,h=50,center=true);
  translate([0,-40+10,0])cylinder(r=10,h=50,center=true);

  // Registro perfil alu
  translate([48/2+10,0,0])cube([20,29,50],center=true);

}

union(){
  translate([0,30,0])cylinder(r=4.3,h=150);
  translate([0,-30,0])cylinder(r=4.3,h=150);
  translate([0,0,-9])cube([43.5,43.5,60],center=true);

  agujeros_nema();

  // agujero_cables
  translate([-20,0,-24])cube([20,20,20],center=true);

  // hueco perfil
  translate([48/2+10,0,0])cube([20,20,50],center=true);
  // tornillos perfil
  translate([48/2+10,0,12.5])rotate([90,0,0])cylinder(r=2.5,h=100,center=true);
  translate([48/2+10,0,-12.5])rotate([90,0,0])cylinder(r=2.5,h=100,center=true);

}
}

