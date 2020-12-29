include <./modules.scad>;

// premier barillet pour la partie sonnerie

barillet(rayon = 20 * echelle, ndent = 8, hdent =40 * echelle, epaisseur = 5*echelle, epaisseur_base = 5*echelle,rayon_axe = ep_axe ,type_axe=false);

//translate([0,60+13,15]) rotate([0,0,-4]) engrenage(rayon = 120* echelle, ndent = 48, hdent =5* echelle, epaisseur = 5* echelle);
