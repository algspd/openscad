use <Write.scad>
use <bcube.scad>

//------------------------ User parameters ----------------------------

module clonewars_id (printer_name = "R2 Reloaded",
                     letter_hi = 2,
                     letter_size = 20,
                     plate_size = [160, 30, 4],
                     depth = 2)
{

  //-- For easily access to the vector components
  X=0;
  Y=1;
  Z=2;

  //-- cutout for the text
  cutout_size = [plate_size[X]-3, plate_size[Y]-3, plate_size[Z]];

  //-- Blanck plate with the cutout
  difference() {
    //-- Plate
    bcube(plate_size, cr=3, cres=6);

    //-- Remove the cutout
    translate([0,0, cutout_size[Z]/2 + plate_size[Z]/2 - depth])
      bcube(cutout_size, cr=3, cres=6);
  }

  //-- Add the printer name!
  color("Blue")
  translate([0,0,letter_hi/2 + plate_size[Z]/2-depth ] )
    write(printer_name,t=letter_hi,h=letter_size,center=true);

}

