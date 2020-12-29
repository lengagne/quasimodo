include <./modules.scad>;

// axe du premier barillet pour la partie sonnerie

cube([2*ep_axe-jeu_axe,2*ep_axe-jeu_axe,l/2*echelle],center=true);
translate([0,0,(l*echelle/4)+ep_cadre*echelle/2])  cylinder(r=ep_axe-jeu_axe/2,h=ep_cadre*echelle,$fn=100,center=true);
translate([0,0,-(l*echelle/4)-ep_cadre*echelle/2])  cylinder(r=ep_axe-jeu_axe/2,h=ep_cadre*echelle,$fn=100,center=true);
translate([0,0,-(l/2*echelle+l/ep_cadre*echelle)/2-ep_cadre/2]) cube([2*ep_axe,2*ep_axe,l/ep_cadre*echelle],center=true);
