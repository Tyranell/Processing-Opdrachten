size(250, 250);
background(185);

//Gezicht
fill(255, 255, 0);
ellipse(125, 125, 240, 240);

//Ogen
fill(0);
ellipse(80, 80, 70, 70);
ellipse(170, 80, 70, 70);

//Mond
fill(160, 0, 0);
arc(125, 160, 150, 150, 0, PI);

//Tong
fill(255, 192, 203);
arc(125, 230, 55, 55, PI, 2* PI);

//De brug van de bril
noFill();
arc(125, 110, 55, 55, PI, 2* PI);
