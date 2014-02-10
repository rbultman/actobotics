use <channel_end.scad>
use <channel_mid.scad>
// use p as the point in 9.0
module channel_of_length(length) {
   offset=0.75;
   midSections=(length-1.5)/1.5;
   union() {
      // one end
      channel_end();
      // the middle
      /* This is one way to do it.
      for (i = [0:midSections-1]) {
         echo("i: ", i);
         assign(offset = 1.5 * i + 0.75) {
            echo("Offset: ", offset);
            translate([offset,0,0]) channel_mid();
         }
      }
      */
      // this is another way
      for (x = [offset:1.5:length-1.5]) {
         translate([x,0,0]) channel_mid();
      }
      // the other end
      translate([length,1.5,0]) rotate(a=180, v=[0,0,1]) channel_end();
   }
}
$fs=0.01;
channel_of_length(12);
color("Red") translate([12.0,0,0]) cube(size=[0.1,2,2]);
