include <./modules.scad>;

// manivelle

difference()
{
    union()
    {
        cylinder(r=2*ep_axe*echelle, h=ep_axe*echelle, center=true, $fn=100);
        translate([ l*echelle/4,0,0])   cube([l*echelle/2,3*ep_axe*echelle+jeu_axe,ep_axe*echelle+jeu_axe],center=true);
        translate([ l*echelle/2,0,0])  cylinder(r=2*ep_axe*echelle, h=10*echelle, center=true, $fn=100);
    }
    cube([2*ep_axe*echelle+jeu_axe,2*ep_axe*echelle+jeu_axe,ep_axe*echelle+jeu_axe],center=true);
}

translate([ l*echelle/2,0,0])  cylinder(r=ep_axe*echelle, h=l*echelle*0.3,  $fn=100);

translate([ l*echelle/2,0,l*echelle*0.2]) scale([2,2,4])  sphere(r=ep_axe*echelle, h=l*echelle*0.4,  $fn=100);

color([1,0,0])

{
    difference()
    {
         translate([ l*echelle/2,0,l*echelle*0.2])  scale([2,2,4]) sphere(r=2*ep_axe*echelle, h=l*echelle*0.4,  $fn=100);
         translate([ l*echelle/2,0,l*echelle*0.2])  scale([2,2,4]) sphere(r=ep_axe*echelle+1, h=l*echelle*0.4,  $fn=100);
        translate([ l*echelle/2,0])    cylinder(r=ep_axe*echelle+1, h=l*echelle*0.31,$fn=100);
    }
}




 
