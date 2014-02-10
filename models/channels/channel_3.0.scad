use <channel_end.scad>
use <channel_mid.scad>
// use p as the point in 3.0
module channel_3p0() {
   union() {
      // one end
      channel_end();
      // the middle
      translate([0.75,0,0]) channel_mid();
      // the other end
      translate([3.0,1.5,0]) rotate(a=180, v=[0,0,1]) channel_end();
   }
}
$fs=0.01;
channel_3p0();
