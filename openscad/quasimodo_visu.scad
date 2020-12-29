include <./modules.scad>;



ep_axe= 5;

color([1,0,0])
{
translate([0,0,(-l/8)*echelle])    import("axe_barillet_1.stl");
translate([0,0,(-l/4)*echelle])    import("barillet_1.stl");
}

translate([(120+20)*echelle,0,l/8*echelle])    color([0,1,0])
{
    import("axe_principal.stl");
    translate([0,0,(-l/4-10)*echelle]) rotate([0,0,3.5]) import("engrenage_1_axe_2.stl");
    
    translate([0,0,-(-l/4-10)*echelle]) rotate([0,0,3.5]) import("engrenage_clic_1_axe_2.stl");
}

translate([0,0,(-l/2+25)*echelle]) cube([L*echelle,h*echelle,ep_cadre*echelle],center=true);


//
//// distance par rapport au fond
//fond = 150;
//
//// cadre
//difference()
//{
//    cube([L,l,h]);
//    translate([ep_cadre,ep_cadre,-2]) cube([L-2*ep_cadre,l-2*ep_cadre,h+5]);
//}
//
//
//// axes
//
//
//// axe 1
//d1 = L - fond;  // distance de l'axe 1 par rapport au fond
//translate([d1,-l*0.05,h/2]) rotate([-90,0,0]) cylinder( r=20,h=l*1.1);
//
//// axe 2
//d2 = d1 - 100;  // distance de l'axe 2 par rapport au fond
//translate([d2,-l*0.05,h/2]) rotate([-90,0,0]) cylinder( r=20,h=l*1.1);
//
//// axe 3
//d3 = d2 - 40;  // distance de l'axe 3 par rapport au fond
//translate([d3,-l*0.05,h/2+80]) rotate([-90,0,0]) cylinder( r=20,h=l*1.1);
//
//// axe 4
//d4 = d2 - 80;  // distance de l'axe 4 par rapport au fond
//translate([d4,-l*0.05,h/2+20]) rotate([-90,0,0]) cylinder( r=20,h=l*1.1);
//
//// axe 5
//d5 = d4 - 100;  // distance de l'axe 5 par rapport au fond
//translate([d5,-l*0.05,h/2]) rotate([-90,0,0]) cylinder( r=20,h=l*1.1);
//
//// axe 6
//d6 = d5 - 100;  // distance de l'axe 5 par rapport au fond
//translate([d6,-l*0.05,h/2]) rotate([-90,0,0]) cylinder( r=20,h=l*1.1);
//
//// axe 7
//d7 = d6 - 180;  // distance de l'axe 5 par rapport au fond
//translate([d7,-l*0.05,h/2]) rotate([-90,0,0]) cylinder( r=20,h=l*1.1);
//
//// axe 8
//d8 = d7 - 120;  // distance de l'axe 5 par rapport au fond
//translate([d8,-l*0.05,h/2]) rotate([-90,0,0]) cylinder( r=20,h=(l/2)*1.1);

//barillet(rayon = 20 * echelle, ndent = 8, hdent =40 * echelle, epaisseur = 5*echelle, epaisseur_base = 5*echelle,rayon_axe = ep_axe ,type_axe=false);
