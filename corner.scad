

module corner_hole() {
	union() {
		translate([0,0,3/2 ]) cylinder(h=( (15-3))+0.1,r=4,center=true, $fn=32);
		translate([0,0,+(3/2) - (15/2)]) cylinder(h=(3+0.1),r=2,center=true, $fn=32);
	}
}
module corner() {
	difference() {
		union() {
			cube(15, center=true);
		}

		rotate([0,0,0]) corner_hole();
		rotate([90,0,0]) corner_hole();
		rotate([0,90,0]) corner_hole();

	}
}

corner();
