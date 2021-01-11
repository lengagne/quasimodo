include <./modules.scad>;

piece= 1;

if (piece==1)
{

    union()
    {
        translate([0,0,2])
        {
            translate([9,7,8])     rotate([90,0,0])    
            {
                difference()
                {
                    cylinder(r=ep_axe,h=ep_cadre*echelle,$fn=50);
                    cylinder(r=2.5,h=ep_cadre*echelle,$fn=50);
                }
            }

            translate([L*echelle/10-9,7,8])     rotate([90,0,0])    
            {
                difference()
                {
                    cylinder(r=ep_axe,h=ep_cadre*echelle,$fn=50);
                    cylinder(r=2.5,h=ep_cadre*echelle,$fn=50);
                }
            }
        }

        translate([0,0,-1])
        difference()
        {
            cube([L*echelle/10,1.5*h*echelle/2,ep_cadre*echelle-jeu_axe]);
            
            for ( i = [0:h*echelle/5:h*echelle/2]) 
            translate([5,10+i,0])  cube([L*echelle/10-10,h*echelle/5-5,ep_cadre*echelle+2]);
            
            translate([L*echelle/20,1.5*h*echelle/2,0])    cylinder(r=11,h=ep_cadre*echelle+2,$fn=50);
            
            translate([L*echelle/60,1.5*h*echelle/2,ep_cadre*echelle/2])   rotate([90,0,0]) cylinder(r=2.05,h=ep_cadre*echelle*4,$fn=50);
        translate([5*L*echelle/60,1.5*h*echelle/2,ep_cadre*echelle/2])   rotate([90,0,0]) cylinder(r=2.05,h=ep_cadre*echelle*4,$fn=50);
        }




        difference()
        {
            cube([5,L*echelle/20,h*echelle/5]);
            rotate([0,90,0]) translate([-h*echelle/5,L*echelle/20+2,0])   cylinder(r=L*echelle/20,h=ep_cadre*echelle,$fn=50);
        }

        translate([L*echelle/10-5,0,0])
        {
            difference()
            {
                cube([5,L*echelle/20,h*echelle/5]);
                rotate([0,90,0]) translate([-h*echelle/5,L*echelle/20+2,0])   cylinder(r=L*echelle/20,h=ep_cadre*echelle,$fn=50);
            }

        }
    }
}

if (piece == 2)
{
scale([1,1,-1]) 
color([1,0,0])
    translate([0,1.5*h*echelle/2,-6])
    difference()
    {
        cube([L*echelle/10,h*echelle/10,ep_cadre*echelle]);
               
        translate([L*echelle/20,0,0])    cylinder(r=22/2,h=ep_cadre*echelle+2,$fn=50);
        
        translate([L*echelle/60,h*echelle/8,ep_cadre*echelle/2])   rotate([90,0,0]) cylinder(r=2.05,h=ep_cadre*echelle*5,$fn=50);
    translate([5*L*echelle/60,h*echelle/8,ep_cadre*echelle/2])   rotate([90,0,0]) cylinder(r=2.05,h=ep_cadre*echelle*5,$fn=50);
    }
}

