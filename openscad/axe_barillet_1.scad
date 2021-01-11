include <./modules.scad>;

// axe du premier barillet pour la partie sonnerie

piece = 1;

if (piece == 1)
{
    difference()
    {
        union()
        {
            cube([2*ep_axe-jeu_axe,2*ep_axe-jeu_axe,l/2*echelle],center=true);
            translate([0,0,(l*echelle/4)+ep_cadre*echelle/2])  cylinder(r=ep_roulement-jeu_axe/2,h=10,$fn=100,center=true);
            translate([0,0,-(l*echelle/4)-ep_cadre*echelle/2+1])  cylinder(r=ep_roulement-jeu_axe/2,h=50,$fn=100,center=true);
        }

        translate([0,0,-35]) rotate([90,0,0])    cylinder(r=2.05,h=30,$fn=100,center=true);
        translate([0,0,-55]) rotate([90,0,0])    cylinder(r=2.05,h=30,$fn=100,center=true);    
        translate([-5,0,-59]) cube([10,10,28]);
    }
}

if (piece ==2)
{
color([1,0,0])
    difference()
    {
        union()
        {
            translate([0,0,-(l*echelle/4)-ep_cadre*echelle/2-12])  cylinder(r=ep_roulement-jeu_axe/2,h=30,$fn=100,center=true);
            translate([0,0,-(l/2*echelle+l/ep_cadre*echelle)/2-ep_cadre/2-25]) cube([2*ep_axe,2*ep_axe,2*l/ep_cadre*echelle],center=true);
        }

        translate([0,0,-35]) rotate([90,0,0])    cylinder(r=2.05,h=30,$fn=100,center=true);
        translate([0,0,-55]) rotate([90,0,0])    cylinder(r=2.05,h=30,$fn=100,center=true);    
        translate([-5,-10,-59]) cube([10,10,28]);    
    }
}