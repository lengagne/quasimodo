L = 990;
l = 500;
h = 300;

ep_cadre = 5;

// distance par rapport au fond
fond = 150;

// cadre
difference()
{
    cube([L,l,h]);
    translate([ep_cadre,ep_cadre,-2]) cube([L-2*ep_cadre,l-2*ep_cadre,h+5]);
}


// axes


// axe 1
d1 = L - fond;  // distance de l'axe 1 par rapport au fond
translate([d1,-l*0.05,h/2]) rotate([-90,0,0]) cylinder( r=20,h=l*1.1);

// axe 2
d2 = d1 - 100;  // distance de l'axe 2 par rapport au fond
translate([d2,-l*0.05,h/2]) rotate([-90,0,0]) cylinder( r=20,h=l*1.1);

// axe 3
d3 = d2 - 40;  // distance de l'axe 3 par rapport au fond
translate([d3,-l*0.05,h/2+80]) rotate([-90,0,0]) cylinder( r=20,h=l*1.1);

// axe 4
d4 = d2 - 80;  // distance de l'axe 4 par rapport au fond
translate([d4,-l*0.05,h/2+20]) rotate([-90,0,0]) cylinder( r=20,h=l*1.1);

// axe 5
d5 = d4 - 100;  // distance de l'axe 5 par rapport au fond
translate([d5,-l*0.05,h/2]) rotate([-90,0,0]) cylinder( r=20,h=l*1.1);

// axe 6
d6 = d5 - 100;  // distance de l'axe 5 par rapport au fond
translate([d6,-l*0.05,h/2]) rotate([-90,0,0]) cylinder( r=20,h=l*1.1);

// axe 7
d7 = d6 - 180;  // distance de l'axe 5 par rapport au fond
translate([d7,-l*0.05,h/2]) rotate([-90,0,0]) cylinder( r=20,h=l*1.1);

// axe 8
d8 = d7 - 120;  // distance de l'axe 5 par rapport au fond
translate([d8,-l*0.05,h/2]) rotate([-90,0,0]) cylinder( r=20,h=(l/2)*1.1);
