use <left_wing.scad>;
use <right_wing.scad>;
use <nose.scad>;


// wings 
dihedral_angle = 10;

module both_wings()
{
    translate([0, 10, 0])
	rotate([-dihedral_angle / 2, 0, 0])
	left_wing();
    translate([0, -10, 0])
	rotate([dihedral_angle / 2, 0, 0])
	right_wing();
}



module wings_socket()
{
difference(){
difference(){
union(){

// rod suport
	translate([1, -40, 5])
	    cube([18, 80, 16]);
      translate([1, -5, -40])
          cube([18, 10, 60]);

// rod suport back
	translate([135, -40, -3])
	    cube([18, 80, 20]);
      translate([135, -5, -40])
          cube([18, 10, 40]);

    difference() {

	union () {

	    translate([0, -70 / 2, -3])
		cube([155, 70, 30]);

	    difference() {

// Down cylinder
		rotate([0, 90, 0])
		    cylinder(r = 70 / 2, h = 155);

		union () {
// Remove the upper half
		    translate([-1, -500, 0])
			cube([1000, 1000, 1000]);

// Remove inner
		    translate([2, 0, 0])
			rotate([0, 90, 0])
			cylinder(r = 66 / 2, h = 151);

		}

	    }

	}


	union () {
	    translate([2, -60 / 2, -5])
            cube([151, 60, 100]);


	    translate([5 + 2.5 + 4, -58 / 2 + 4, 20])
		cylinder(r = 2.1, h = 15);
	    translate([5 + 2.5 - 4 + 140, -58 / 2 - 4 + 58, 20])
		cylinder(r = 2.1, h = 15);
	    translate([5 + 2.5 - 4 + 140, -58 / 2 + 4, 20])
		cylinder(r = 2.1, h = 15);
	    translate([5 + 2.5 + 4, -58 / 2 - 4 + 58, 20])
		cylinder(r = 2.1, h = 15);

	}
    }
}

union(){

  translate([-30, 70 / 2, -10])
	rotate([dihedral_angle / 2, 0, 0])
	cube([200, 200, 40]);

    translate([-30, -70 / 2 - 200, 5])
	rotate([-dihedral_angle / 2, 0, 0])
	cube([200, 200, 40]);

    translate([0, 10, 0])
	rotate([-dihedral_angle / 2, 0, 0])
	rods_left_wing();
    translate([0, -10, 0])
	rotate([dihedral_angle / 2, 0, 0])
	rods_right_wing();
}
}

union(){
translate([-1,-100,-75])
cube([2000,2000,50]);

// Motor wiring holes
translate([-1,-20,-20]) cube([20,15,17]);
translate([-1,5,-20]) cube([20,15,17]);

}

}
translate([0,-23,-25])
cube([155,46,2]);
}



    wings_socket();
    nose();
  


//both_wings();
