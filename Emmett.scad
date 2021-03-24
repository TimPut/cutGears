use <gears.scad>
intersection()
{
  union()
  {
    for(i=[0:90:359]) // first axis
    rotate([i, 0, 0])
    translate([0, 0, -3])
    rotate([0, 0, 18*i/90])
    gear_bevel(); 

    for(i=[90,270]) // second axis
    rotate([0, i, 0])
    translate([0, 0, -3])
    rotate([0, 0, 18*i/90])
    gear_bevel(); 
  }

  hull() // outer triangle cube
  rotate([0, 55, 45])
  linear_extrude(height = 5, twist=60, slices = 1,center = true)
  circle(3.5, $fn=3);
}
