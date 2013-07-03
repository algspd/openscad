

module nose(){
translate([155,0,2])
rotate([0,180,0])
  difference(){
    union(){
      difference(){


          translate([155,0,0])
          rotate([0,90,0])
          cylinder(r1=35,r2=15,h=50);

        union(){

          // Inner
          translate([154,0,0])
          rotate([0,90,0])
          cylinder(r1=32,r2=12,h=52);

          // Down plane
          translate([1,-100,-65])
          cube([2000,2000,40]);

          // Upper plane
          translate([1,-100,25])
          cube([2000,2000,40]);
        }
      }
      // Down plane
      translate([155,-25,-25])
      cube([30,50,3]);

      // Upper plane
      translate([155,-25,24])
      cube([30,50,3]);

    }

    // Clear perimeter of nose
    difference(){
      translate([155,0,0])
      rotate([0,90,0])
      cylinder(r1=370,r2=170,h=50);

      translate([155,0,0])
      rotate([0,90,0])
      cylinder(r1=35,r2=15,h=50);

    }
  }
}

nose();