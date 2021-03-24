use <shortcuts.scad>
use <gears.scad>

torsen(); 

module torsen()
{
  for(i=[0:120:359])
  Ry(i)
  {
    T(-15,-6)
    circular(18, i); 
  
    T(-15, 6)
    circular(0, i); 
  }

  for(i=[-1,1])Ty(i*6)
  center(6); 
}


module circular(w = 0, w1=0)
{
  h = 16; 
  color("white")
  Rz(w)
  for(i=[-1,1])Tz(i*(h/2+1)) 
    gear(m=1.2,h=2); 
  Rz(w1)
  gear_helix(h=16, w_helix = 45); 
}


module center(w)
{
  color("gray")
  R(90)  Rz(w)
  gear_helix(h=11, z=20, w_helix = 45); 
}

