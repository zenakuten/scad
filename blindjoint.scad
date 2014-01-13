
h = 15;

module m3nut() {
	cylinder(r=3.3,h=2.3,center=true,$fn=6);
}

module blindjoint() {

	difference() {
		union() {
			translate([0,0,h/2+2.6/2 + 1.1  ])
				cube([5.6 ,2.6,h-2.6], center=true);
			
			translate([-5.6/2,-1.1/2 +2.6/2 + 1/2 ,h/2+2.6/2 + 1.1 ])
				linear_extrude(height=h-2.6,center=true,convexity=10) 
					polygon(points=[[0,0],[1.15,1],[5.6-1.15,1],[5.6,0]], paths=[[0,1,2,3]]);

			translate([0,-2.6/2 - 1.1/2  + 0.1 ,h/2+1.1])
				cube([3.3 ,1.1,h], center=true);

			rotate([90,00,00])
				translate([0,(2.6/2),h/2+1.1])
				cube([5.6 ,2.6,h-2.6], center=true);

			rotate([90,00,00])
				translate([0,2.6+1.1/2 - 0.1  ,h/2 - 0.2])
					cube([3.3 ,1.1,h], center=true);

			rotate([90,180,00])
			translate([-5.6/2  ,-0.02,h/2+1.1  ])
				linear_extrude(height=h-2.6+0.05,center=true,convexity=10) 
					polygon(points=[[0,0],[1.15,1],[5.6-1.15,1],[5.6,0]], paths=[[0,1,2,3]]);

			translate([0,0-0.1  - 0.05,2.6/2+1.1/2 + 1/2 - 1.0  + 0.05 ])
			cube([3.3, 2.6+1.1+1.0 + 0.1, 2.6+1.1+1.0 + 0.1], center=true);

		}


//		translate([0,-10,2.6/2 - 1/2])
//		rotate([0,0,30])
//			cylinder(r=3.3,h=2.6+1.1 + 0.1,center=true,$fn=6);

		translate([0,-10,2.6/2 - 1/2 + 1.1 - 0.02])
			cylinder(r=1.25,h=2.6+1.1 + 3.0+ 0.1,center=true,$fn=32);
		
//		rotate([-90,0,180])
//		translate([0,-10,(2.6+1.1)/2  -1.1 - 2.6/2])
//		rotate([0,0,30])
//			cylinder(r=3.3,h=2.6+1.1 + 0.1,center=true,$fn=6);

		rotate([-90,0,180])
		translate([0,-10,-1.1/2 + 1.1])
			cylinder(r=1.25,h=2.6+1.1 + 3.0 + 0.1,center=true,$fn=32);


	}
}

blindjoint();
