use <channel_end.scad>
// use p as the point in 1.5
module channel_1p5() {
   union() {
      channel_end();
      translate([1.5,1.5,0]) rotate(a=180, v=[0,0,1]) channel_end();
   }
}
