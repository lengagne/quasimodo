include <./modules.scad>;

// deuxieme axe, engrenage numéro 1 pour la partie sonnerie
//translate([0,60+13,15]) rotate([0,0,-4]) 
engrenage(rayon = (120-10/2)* echelle, ndent = 48, hdent =10* echelle, epaisseur = 20* echelle,type_axe=false);
