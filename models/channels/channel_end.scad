use <channel_half_side.scad>
// use p as the point in 1.5
module channel_end() {
   union() {
      channel_half_side();
      translate([0,0.09,0]) rotate(a=90, v=[1,0,0]) channel_half_side();
      translate([0,1.5,0]) rotate(a=90, v=[1,0,0]) channel_half_side();
   }
}

$fs=0.01;
channel_end();
