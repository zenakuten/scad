module meatball() {
translate([-35,-35,2])
   linear_extrude(height=3, center = true, convexity=10) scale(3)

import(file="evlogo.dxf", layer=0);
}

meatball();
