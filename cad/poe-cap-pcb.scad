$fn = 100;

cap_thichkness = 1.5;
base_thickness = 3;
pcb_thickness = 1.6;

difference() {
    union() {
        difference() {
            translate([0, 0, cap_thichkness])cylinder(h = 5, d = 48.0);
            translate([0, 0, cap_thichkness+2.5])cylinder(h = 5, d = 42.5);
        }
        
        cylinder(h = cap_thichkness, d = 50);
        
        rotate([0, 0, 180])translate([0, -17, 1])cube([base_thickness, 34, 112]);
        //rotate([0, 0, 180])translate([base_thickness, -17, 1+112])cube([pcb_thickness, 34, 1]);
        
        

    }
    
    //rotate([0, 0, 180])translate([base_thickness, -25, cap_thichkness+2.5])cube([50, 50, 10]);
    translate([4, -30, cap_thichkness])cube([3.5, 60, 8]);
    translate([0, -40/2, cap_thichkness])cube([7.5, 40, 8]);
    
    //rj45
    rotate([0, 0, 180])translate([base_thickness+pcb_thickness, -16/2, -0.1])cube([14, 16, 6]);
    
    //usb
    rotate([0, 0, 180])translate([base_thickness-3, -8/2, -0.1])cube([3, 8, 5+6]);
    
    //pcb
    rotate([0, 0, 180])translate([base_thickness, -17, 1])cube([pcb_thickness, 34, 5]);
    
    //holes
    translate([0, -12.5, 1+6])rotate([0, -90, 0])cylinder(h = 5, d = 3.5);
    translate([0, 12.5, 1+6])rotate([0, -90, 0])cylinder(h = 5, d = 3.5);
    translate([0, 12.5, 1+105])rotate([0, -90, 0])cylinder(h = 5, d = 4);
    
    //tht
    rotate([0, 0, 180])translate([base_thickness-2, -18/2, 1])cube([2, 18, 5+20]);
    rotate([0, 0, 180])translate([base_thickness-2, -15+0.9, 1+74])cube([2, 3.2, 1+25]);
    rotate([0, 0, 180])translate([base_thickness-2, 9, 1+50])cube([2, 3.2, 5+17]);
    rotate([0, 0, 180])translate([base_thickness-2, 9, 1+99])cube([2, 3.2, 5+8]);
    
    //sma
    //translate([-10/2-pcb_thickness-base_thickness, -15, cap_thichkness+0.5])rotate([0, 0, 90])cylinder(d=9.5, h=7, $fn=6);
     //translate([-10/2-pcb_thickness-base_thickness, -15, 0])rotate([0, 0, 90])cylinder(d=6.4, h=10);



}

translate([2.5, 7, cap_thichkness])cube([7.5, 11, 2.5]);
translate([2.5, -7-11, cap_thichkness])cube([7.5, 11, 2.5]);


