use <channel_1.5.scad>
use <channel_3.0.scad>
use <channel_3.75.scad>
use <channel_4.5.scad>
use <channel_6.0.scad>
use <channel_9.0.scad>
use <channel_12.0.scad>
use <channel_15.0.scad>
use <channel_18.0.scad>
use <channel_24.0.scad>

// show all channels space apart
$fs=0.05;
channel_1p5();
translate([0,2,0]) channel_3p0();
translate([0,4,0]) channel_3p75();
translate([0,6,0]) channel_4p5();
translate([0,8,0]) channel_6p0();
translate([0,10,0]) channel_9p0();
translate([0,12,0]) channel_12p0();
translate([0,14,0]) channel_15p0();
translate([0,16,0]) channel_18p0();
translate([0,18,0]) channel_24p0();

