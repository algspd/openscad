include<resina_carriage.scad>;

module un_agujero(){
  translate([31/2,31/2,-10])cylinder(r=3.5/2,h=100,center=true);
}


difference(){
union(){
  // Registros varillas lisas
  translate([17.5/2,0,0])cube([16+17.5+4,60,10],center=true);
  translate([0,40-10,0])cylinder(r=10,h=10,center=true);
  translate([0,-40+10,0])cylinder(r=10,h=10,center=true);

  // Registro perfil alu
  translate([48/2+10,0,0])cube([20,30,10],center=true);

}

union(){

  translate([20,25,0])cube([20,20,10],center=true);
  translate([20,-25,0])cube([20,20,10],center=true);

  // Agujeros varilas lisas
  translate([0,30,-10])cylinder(r=4.3,h=150);
  translate([0,-30,-10])cylinder(r=4.3,h=150);

  // hueco perfil
  translate([48/2+10,0,0])cube([20,20,25],center=true);

  // tornillos perfil
  translate([48/2+10,0,0])rotate([90,0,0])cylinder(r=2.5,h=100,center=true);

  // Agujero varilla roscada
  translate([0,0,-30])cylinder(r=3.5,h=250);

}
}

