/*
 * This is the side face of a channel.
 */
module channel_half_mid_side() {
   face_depth=0.09;
   hole_extension=0.1;
   hole_height=face_depth+2*hole_extension;
   difference() {
      // the face
      cube(size=[0.75,1.5,face_depth]);
      // the central hole
      translate([0.75,0.75,-hole_extension]) cylinder(h=hole_height, r=0.25);
      translate([0,0.75,-hole_extension]) cylinder(h=hole_height, r=0.25);
      // the outer-most holes - the 1.5 hub holes
      translate([0.22,0.22,-hole_extension]) cylinder(h=hole_height, r=0.07);
      translate([0.22,1.5-0.22,-hole_extension]) cylinder(h=hole_height, r=0.07);
      // more holes
      translate([0.75-0.439/2,0.22,-hole_extension]) cylinder(h=hole_height, r=0.07);
      translate([0.75-0.439/2,1.5-0.22,-hole_extension]) cylinder(h=hole_height, r=0.07);
      // more holes
      translate([0.75-0.956/2,0.75-0.544/2,-hole_extension]) cylinder(h=hole_height, r=0.07);
      translate([0.75-0.956/2,0.75+0.544/2,-hole_extension]) cylinder(h=hole_height, r=0.07);
      // more holes - the 0.77 hub holes
      translate([0.75,0.75-0.77/2,-hole_extension]) cylinder(h=hole_height, r=0.07);
      translate([0.75,0.75+0.77/2,-hole_extension]) cylinder(h=hole_height, r=0.07);
      // more holes - the 0,77 holes at the end
      translate([0,0.75-0.77/2,-hole_extension]) cylinder(h=hole_height, r=0.07);
      translate([0,0.75+0.77/2,-hole_extension]) cylinder(h=hole_height, r=0.07);
      translate([0.75-0.77/2,0.75,-hole_extension]) cylinder(h=hole_height, r=0.08);
      // more holes - the 0.77 hub holes
      translate([0.75,0.75,0])
         rotate(a=45, v=[0,0,1]) {
            translate([-0.77/2,0,-hole_extension]) cylinder(h=hole_height, r=0.07);
            translate([0,0.77/2,-hole_extension]) cylinder(h=hole_height, r=0.07);
         }
   }
}
$fs=0.01;
channel_half_mid_side();

