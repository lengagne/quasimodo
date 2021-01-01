include <./modules.scad>;

// deuxieme axe, engrenage numéro 1 pour la partie sonnerie
//translate([0,60+13,15]) rotate([0,0,-4]) 
scale([1,1,-1]) 
engrenage_clic(rayon = (120-10/2)* echelle, ndent = 20, hdent =20* echelle, epaisseur = 20* echelle,type_axe=false,coeff_dent=2,jeu_axe=0.2);
