include <./modules.scad>;

//union()
//{
////    translate([8,5,-14])     rotate([90,0,0])    
////    {
////        difference()
////        {
////            cylinder(r=ep_axe,h=ep_cadre*echelle,$fn=50);
////            cylinder(r=2.5,h=ep_cadre*echelle,$fn=50);
////        }
////    }
////
////    translate([L*echelle/10-8,5,-14])     rotate([90,0,0])    
////    {
////        difference()
////        {
////            cylinder(r=ep_axe,h=ep_cadre*echelle,$fn=50);
////            cylinder(r=2.5,h=ep_cadre*echelle,$fn=50);
////        }
////    }
//
//    translate([0,0,2])
//    {
//        translate([8,5,6])     rotate([90,0,0])    
//        {
//            difference()
//            {
//                cylinder(r=ep_axe,h=ep_cadre*echelle,$fn=50);
//                cylinder(r=2.5,h=ep_cadre*echelle,$fn=50);
//            }
//        }
//
//        translate([L*echelle/10-8,5,6])     rotate([90,0,0])    
//        {
//            difference()
//            {
//                cylinder(r=ep_axe,h=ep_cadre*echelle,$fn=50);
//                cylinder(r=2.5,h=ep_cadre*echelle,$fn=50);
//            }
//        }
//    }
//
//    translate([0,0,-1])
//    difference()
//    {
//        cube([L*echelle/10,h*echelle/2,ep_cadre*echelle-jeu_axe]);
//        
//        for ( i = [0:h*echelle/5:h*echelle/3]) 
//        translate([5,10+i,0])  cube([L*echelle/10-10,h*echelle/5-5,ep_cadre*echelle+2]);
//        
//        translate([L*echelle/20,h*echelle/2,0])    cylinder(r=ep_axe+jeu_axe,h=ep_cadre*echelle+2,$fn=50);
//        
//        translate([L*echelle/40,h*echelle/2,ep_cadre*echelle/2])   rotate([90,0,0]) cylinder(r=2.05,h=ep_cadre*echelle*2,$fn=50);
//    translate([3*L*echelle/40,h*echelle/2,ep_cadre*echelle/2])   rotate([90,0,0]) cylinder(r=2.05,h=ep_cadre*echelle*2,$fn=50);
//    }
//
//
//
//
//    difference()
//    {
//        cube([ep_cadre*echelle,L*echelle/20,h*echelle/5]);
//        rotate([0,90,0]) translate([-h*echelle/5,L*echelle/20+2,0])   cylinder(r=L*echelle/20,h=ep_cadre*echelle,$fn=50);
//    }
//
////    scale([1,1,-1]) translate([0,0,-5])  difference()
////    {
////        cube([ep_cadre*echelle,L*echelle/20,h*echelle/5]);
////        rotate([0,90,0]) translate([-h*echelle/5,L*echelle/20+2,0])   cylinder(r=L*echelle/20,h=ep_cadre*echelle,$fn=50);
////    }
//
//    translate([L*echelle/10-5,0,0])
//    {
//        difference()
//        {
//            cube([ep_cadre*echelle,L*echelle/20,h*echelle/5]);
//            rotate([0,90,0]) translate([-h*echelle/5,L*echelle/20+2,0])   cylinder(r=L*echelle/20,h=ep_cadre*echelle,$fn=50);
//        }
//
////        scale([1,1,-1]) translate([0,0,-5])  difference()
////        {
////            cube([ep_cadre*echelle,L*echelle/20,h*echelle/5]);
////            rotate([0,90,0]) translate([-h*echelle/5,L*echelle/20+2,0])   cylinder(r=L*echelle/20,h=ep_cadre*echelle,$fn=50);
////        }
//    }
//}

color([1,0,0])
    translate([0,h*echelle/2,-1])
    difference()
    {
        cube([L*echelle/10,h*echelle/20,ep_cadre*echelle]);
               
        translate([L*echelle/20,h*echelle/20,0])    cylinder(r=ep_axe+jeu_axe,h=ep_cadre*echelle+2,$fn=50);
        
        translate([L*echelle/40,h*echelle/20,ep_cadre*echelle/2])   rotate([90,0,0]) cylinder(r=2.05,h=ep_cadre*echelle*2,$fn=50);
    translate([3*L*echelle/40,h*echelle/20,ep_cadre*echelle/2])   rotate([90,0,0]) cylinder(r=2.05,h=ep_cadre*echelle*2,$fn=50);
    }


