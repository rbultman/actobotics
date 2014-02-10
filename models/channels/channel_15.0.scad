use <channel_of_length.scad>
// use p as the point in 3.0
len = 15.0;
module channel_15p0() {
   channel_of_length(len);
}
$fs=0.01;
channel_15p0();
color("Red") translate([len,0,0]) cube(size=[0.1,2,2]);
