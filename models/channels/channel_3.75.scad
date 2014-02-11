use <channel_end.scad>
use <channel_mid.scad>
use <channel_half_mid.scad>
// use p as the point in 3.75
module channel_3p75() {
   union() {
      // one end
      channel_end();
      // the middle
      translate([0.75,0,0]) channel_mid();
      // the half mid
      translate([2.25,0,0]) channel_half_mid();
      // the other end
      translate([3.75,1.5,0]) rotate(a=180, v=[0,0,1]) channel_end();
   }
}
