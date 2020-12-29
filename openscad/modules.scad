
pi = 3.141592653589793238; 
echelle = 0.5;
ep_axe= 5;

L = 990;
l = 250;
h = 300;

ep_cadre = 10;
jeu_axe = 0.1;



module engrenage( rayon, ndent, hdent, epaisseur, coeff_dent=1.5, rayon_axe=5, jeu_axe=0.1, rayon_trou_fixation=2, type_axe=true)
{
    haxe = 2*epaisseur;
    
    perimetre = 2*pi*rayon;
    d_creneau = perimetre/ndent;
    angle_creneau = 360/ndent;
    
    union()
    {
        
        intersection()
        {
            difference()
            {
                cylinder(r=rayon+hdent, h=epaisseur,$fn=100,center=true);
                if(type_axe){
                    cylinder(r=rayon, h=epaisseur+1,$fn=100,center=true);
                }else
                {
                    cube([rayon,rayon,epaisseur+1],center=true);
                }
            }
            
            union()
            {
                for ( i = [0:angle_creneau:360])
                rotate([0,0,i]) translate([rayon,0,0])  scale([hdent*coeff_dent,d_creneau/4,1])  cylinder(r=1,h=epaisseur,center=true,$fn=50);
            
            }
        }        
        difference()
        {
            cylinder(r=rayon, h=epaisseur,$fn=100,center=true);
            cylinder(r=rayon*0.8, h=epaisseur+1,$fn=100,center=true);
           
        }
        
        // pour l'axe
        translate([0,0,epaisseur/2])
        {
            difference()
            {
                union()
                {
                    cylinder(r=rayon_axe*2.2, h=haxe,$fn=100,center=true);
                    translate([0,0,-epaisseur/2])    rotate([0,0,45])    cube([2*rayon-hdent,rayon_axe*2.2,epaisseur],center=true);
                    translate([0,0,-epaisseur/2])    rotate([0,0,-45])    cube([2*rayon-hdent,rayon_axe*2.2,epaisseur],center=true);
                }
                if(type_axe)
                {
                    cylinder(r=rayon_axe+jeu_axe, h=haxe+1,$fn=100,center=true);
                }else
                {
                    cube([2*(rayon_axe+jeu_axe),2*(rayon_axe+jeu_axe),haxe+1],center=true);
                }                  
                
                
                translate([0,0,epaisseur-1.5*rayon_trou_fixation])  rotate([90,0,0])    cylinder(r=rayon_trou_fixation, h=3*haxe+1,$fn=100,center=true);
                translate([0,0,-epaisseur+1.5*rayon_trou_fixation])  rotate([90,0,0])    cylinder(r=rayon_trou_fixation, h=3*haxe+1,$fn=100,center=true);
                translate([0,rayon_axe*1.5,epaisseur-1.5*rayon_trou_fixation])    cube([4*rayon_trou_fixation,rayon_trou_fixation,3*rayon_trou_fixation],center=true);
                translate([0,rayon_axe*1.5,-epaisseur+1.5*rayon_trou_fixation])    cube([4*rayon_trou_fixation,rayon_trou_fixation,3*rayon_trou_fixation],center=true);

               rotate([0,0,180])
               {
                    translate([0,rayon_axe*1.5,epaisseur-1.5*rayon_trou_fixation])    cube([4*rayon_trou_fixation,rayon_trou_fixation,3*rayon_trou_fixation],center=true);
                    translate([0,rayon_axe*1.5,-epaisseur+1.5*rayon_trou_fixation])    cube([4*rayon_trou_fixation,rayon_trou_fixation,3*rayon_trou_fixation],center=true);
               }

            }
        } 
    }    
}

module barillet(rayon, ndent, hdent, epaisseur, epaisseur_base, longueur_fixation_axe=10,rayon_axe=5, jeu_axe=0.01, rayon_trou_fixation=2, type_axe=true)
{
    angle = 360/ndent;
    rdent = pi/ndent*rayon/2;
    
    
    difference()
    {
        union()
        {
            for ( i = [0:angle:360])  rotate([0,0,i])    translate([rayon,0,hdent/2]) cylinder(r=rdent,h=hdent,$fn=100,center=true);            
            translate([0,0,-epaisseur_base/2]) cylinder(r=(rayon+rdent)*1.05,h=epaisseur_base,$fn=100,center=true);                
            translate([0,0,-epaisseur_base/2-longueur_fixation_axe/2]) 
            {   
                difference()
                {
                    cylinder(r=rayon_axe*2.2,h=longueur_fixation_axe,$fn=100,center=true);    
                    translate([0,0,-1*rayon_trou_fixation]) rotate([90,0,0])    cylinder(r=rayon_trou_fixation, h=6*rayon_axe,$fn=100,center=true);
                    translate([0,rayon_axe*1.5,-rayon_trou_fixation])    cube([4*rayon_trou_fixation,rayon_trou_fixation,3*rayon_trou_fixation],center=true);
                    translate([0,-rayon_axe*1.5,-rayon_trou_fixation])    cube([4*rayon_trou_fixation,rayon_trou_fixation,3*rayon_trou_fixation],center=true);                    
                }
            }        
            
            translate([0,0,hdent+epaisseur_base/2]) cylinder(r=(rayon+rdent)*1.05,h=epaisseur_base,$fn=100,center=true);

            translate([0,0,hdent + (epaisseur_base+longueur_fixation_axe)/2]) 
            {   
                difference()
                {
                    cylinder(r=rayon_axe*2.2,h=longueur_fixation_axe,$fn=100,center=true);    
                    translate([0,0,1*rayon_trou_fixation]) rotate([90,0,0])    cylinder(r=rayon_trou_fixation, h=6*rayon_axe,$fn=100,center=true);
                    translate([0,rayon_axe*1.5,rayon_trou_fixation])    cube([4*rayon_trou_fixation,rayon_trou_fixation,3*rayon_trou_fixation],center=true);
                    translate([0,-rayon_axe*1.5,rayon_trou_fixation])    cube([4*rayon_trou_fixation,rayon_trou_fixation,3*rayon_trou_fixation],center=true);                    
                }
            }            
            
        }
        if(type_axe)
        {
            cylinder(r=rayon_axe+jeu_axe, h=1000,$fn=100,center=true);
        }else
        {
            cube([2*(rayon_axe+jeu_axe),2*(rayon_axe+jeu_axe),1000],center=true);
        }           
    }    
}


module engrenage_clic( rayon, ndent, hdent, epaisseur, coeff_dent=1.5, rayon_axe=5, jeu_axe=0.1, rayon_trou_fixation=2, type_axe=true)
{
    haxe = 2*epaisseur;
    
    perimetre = 2*pi*rayon;
    d_creneau = perimetre/ndent;
    angle_creneau = 360/ndent;
    
    union()
    {
        
        intersection()
        {
            difference()
            {
                cylinder(r=rayon+hdent, h=epaisseur,$fn=100,center=true);
                cylinder(r=rayon, h=epaisseur+1,$fn=100,center=true);
            }
            
            union()
            {
                for ( i = [0:angle_creneau:360])    rotate([0,0,i])
                difference()
                {
                    translate([0,hdent*coeff_dent,0])  cylinder(r=rayon+hdent, h=epaisseur,$fn=100,center=true);
                    translate([0,rayon+hdent,0])  cube([2*(rayon+hdent),2*(rayon+hdent),epaisseur+1],center=true);
                    translate([rayon+hdent,0,0])  cube([2*(rayon+hdent),2*(rayon+hdent),epaisseur+1],center=true);
                }
            }
        }        
        difference()
        {
            cylinder(r=rayon, h=epaisseur,$fn=100,center=true);
            cylinder(r=rayon*0.8, h=epaisseur+1,$fn=100,center=true);
        }
        
        // pour l'axe
        translate([0,0,epaisseur/2])
        {
            difference()
            {
                union()
                {
                    cylinder(r=rayon_axe*2.2, h=haxe,$fn=100,center=true);
                    translate([0,0,-epaisseur/2])    rotate([0,0,45])    cube([2*rayon-hdent,rayon_axe*2.2,epaisseur],center=true);
                    translate([0,0,-epaisseur/2])    rotate([0,0,-45])    cube([2*rayon-hdent,rayon_axe*2.2,epaisseur],center=true);
                }
                if(type_axe)
                {
                    cylinder(r=rayon_axe+jeu_axe, h=haxe+1,$fn=100,center=true);
                }else
                {
                    cube([2*(rayon_axe+jeu_axe),2*(rayon_axe+jeu_axe),haxe+1],center=true);
                }                  
                
//                
                translate([0,0,epaisseur-1.5*rayon_trou_fixation])  rotate([90,0,0])    cylinder(r=rayon_trou_fixation, h=3*haxe+1,$fn=100,center=true);
                translate([0,0,-epaisseur+1.5*rayon_trou_fixation])  rotate([90,0,0])    cylinder(r=rayon_trou_fixation, h=3*haxe+1,$fn=100,center=true);
                translate([0,rayon_axe*1.5,epaisseur-1.5*rayon_trou_fixation])    cube([4*rayon_trou_fixation,rayon_trou_fixation,3*rayon_trou_fixation],center=true);
                translate([0,rayon_axe*1.5,-epaisseur+1.5*rayon_trou_fixation])    cube([4*rayon_trou_fixation,rayon_trou_fixation,3*rayon_trou_fixation],center=true);

               rotate([0,0,180])
               {
                    translate([0,rayon_axe*1.5,epaisseur-1.5*rayon_trou_fixation])    cube([4*rayon_trou_fixation,rayon_trou_fixation,3*rayon_trou_fixation],center=true);
                    translate([0,rayon_axe*1.5,-epaisseur+1.5*rayon_trou_fixation])    cube([4*rayon_trou_fixation,rayon_trou_fixation,3*rayon_trou_fixation],center=true);
               }

            }
        } 
    }    
}


//barillet(rayon = 10, ndent = 5, hdent =5, epaisseur = 5, epaisseur_base = 5,type_axe=false);

//translate([0,150,0])engrenage_clic(rayon = 55, ndent = 20, hdent =10, epaisseur = 10,coeff_dent=1.5);
//translate([0,50+5,5]) engrenage(rayon = 20, ndent = 20, hdent =5, epaisseur = 5);
//translate([30+5,50+5,5]) engrenage(rayon = 50, ndent = 50, hdent =5, epaisseur = 5,type_axe=false);

//translate([0,0,0])  cylinder(r=4.75,h=20,$fn=50);
//translate([0,55,0])  cylinder(r=4.75,h=20,$fn=50);
//translate([35,55,0])  cylinder(r=4.75,h=20,$fn=50);
//translate([-5,-2.5,0])  cube([10,60,2]);
//translate([-5,50,0])  cube([40,10,2]);

