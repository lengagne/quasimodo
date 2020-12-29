include <./modules.scad>;

// axe du premier barillet pour la partie sonnerie

cube([2*ep_axe-jeu_axe,2*ep_axe-jeu_axe,l*echelle],center=true);
translate([0,0,(l*echelle/2)+ep_cadre*echelle/2])  cylinder(r=ep_axe-jeu_axe/2,h=ep_cadre*echelle,$fn=100,center=true);
translate([0,0,-(l*echelle/2)-ep_cadre*echelle/2])  cylinder(r=ep_axe-jeu_axe/2,h=ep_cadre*echelle,$fn=100,center=true);
