//Stiftaufnahme für den LAB-Roboter-Arm UNIVERSAL ROBOTS
//Stift-Durchmesser: 10mm
// KHF V27.04.2021-1

include <ma_lib/constants.scad>
use <ma_lib/metric_screws.scad>
use <ma_lib/shapes.scad>

$fn=200;

//Grundkörper
difference(){
union() {
translate([0,0,14.9])
cylinder(h = 6.8, d = 31.4, center = true);
translate([0,0,8.5])
cylinder(h = 6, d = 63, center = true);

//Rundung Grundkörper
translate([0,0,-1.5])
rotate([0,0,90])
cyl(l=20, d=63,  fillet=3);
}

//*****************************************
//Stift-Befestigung
union() {
//Aussparung Mutter
translate([2,-2,0])
rotate([45,90,0])
metric_nut(size=4, hole=true, pitch=1.5);
translate([3,-3,0])
rotate([45,90,0])
metric_nut(size=4, hole=true, pitch=1.5);
}
//Bohrungen Stift-Befestigung
union() {
union() {
translate([0,0,0])
rotate([45,90,0])
cylinder(h = 60, d = 4.2);
cylinder(h = 80, d = 10, center = true);
}

translate([15,-15,0])
rotate([45,90,0])
cylinder(h = 60, d = 8);
}
//*****************************************
//Vier Bohrungen für die Grundkörper Befestigung aum Roboter
union() {
translate([0,0,0])
cylinder(h = 80, d = 10, center = true);

translate([0,24.5,0])
cylinder(h = 60, d = 6.2, center = true);

translate([0,-24.5,0])
cylinder(h = 60, d = 6.2, center = true);

translate([-24.5,0,0])
cylinder(h = 60, d = 6.2, center = true);

translate([24.5,0,0])
cylinder(h = 60, d = 6.2, center = true);
}
}
//*****************************************
//*****************************************



//******* Hilfsprogramme ******************

/*
//Sockelhöhe messen
        translate([0, 33, -11.5])
        cylinder(h = 23, r=1);

*/

/*
// Abstand der Bohrlöcher
cuboid([55 ,2,1]);
 
union() {
rotate([0,0,90])
cuboid([55 ,2,1]);
}

union() {
translate([15,-15,0])
rotate([0,0,45])
cuboid([41 ,2,1]);
}
*/

//*****************************************

/*
// Programm: Aussparung Mutter
include <ma_lib/constants.scad>
use <ma_lib/metric_screws.scad>
use <ma_lib/shapes.scad>

$fn=100;

difference(){
union() {
//Rundung Grundkörper
translate([0,0,-1.5])
rotate([0,0,90])
color([0,0.5,0.5,0.3])cyl(l=20, d=63,  fillet=3);
}

union() {
//Aussparung Mutter
translate([2,-2,0])
rotate([45,90,0])
metric_nut(size=4, hole=true, pitch=1.5);
translate([3,-3,0])
rotate([45,90,0])
metric_nut(size=4, hole=true, pitch=1.5);
}

union() {
//Bohrungen
union() {
translate([0,0,0])
rotate([45,90,0])
cylinder(h = 60, d = 4);

color([0,0.5,0.5,0.3]) cylinder(h = 80, d = 10, center = true);
}
//Stift-Befestigung
translate([0,0,0])
rotate([45,90,0])
cylinder(h = 60, d = 0);

translate([15,-15,0])
rotate([45,90,0])
cylinder(h = 60, d = 8);
}
}
*/
//*****************************************



