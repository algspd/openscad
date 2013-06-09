//------------------------------------------------------------------
//-- Clone wars identification plate
//-- Identify your printer
//-- Clone wars project:
//--   http://www.reprap.org/wiki/Proyecto_Clone_Wars
//------------------------------------------------------------------
//-- Juan Gonzalez-Gomez (Obijuan) juan@iearobotics.com
//-- Dec-2012
//------------------------------------------------------------------
//-- Released under the GPL license
//------------------------------------------------------------------
//-- It uses the wonderful openscad write library By Harlan Martin
//-- harlan@sutlog.com
//------------------------------------------------------------------

use <clonewars_id.scad>

nletras=4;
ancho=nletras*27+20;
clonewars_id(printer_name = "MeMe", letter_size = 40, plate_size = [ancho, 60, 4]);
