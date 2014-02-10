use <channel_mid_side.scad>
// use p as the point in 1.5
module channel_mid() {
   union() {
      channel_mid_side();
      translate([0,0.09,0]) rotate(a=90, v=[1,0,0]) channel_mid_side();
      translate([0,1.5,0]) rotate(a=90, v=[1,0,0]) channel_mid_side();
   }
}

$fs=0.01;
channel_mid();
