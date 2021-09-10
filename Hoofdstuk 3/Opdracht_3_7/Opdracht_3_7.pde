size(200, 200);
background(255);

//Huis
fill(244, 226, 198);
rect(10, 80, 180, 110);

//Dak
fill(230);
triangle(10, 80, 100, 10, 190, 80);

//Raam
fill(255, 0, 0);
ellipse(60, 130, 60, 60);
fill(255);
ellipse(60, 130, 50, 50);

stroke(0);
strokeWeight(6);
line(35, 130, 85, 130);
stroke(0);
strokeWeight(6);
line(60, 105, 60, 155);

stroke(255, 0, 0);
strokeWeight(5);
line(60, 105, 60, 155);
stroke(255, 0, 0);
strokeWeight(5);
line(35, 130, 85, 130);

//Deur
stroke(0);
strokeWeight(1);
fill(0, 0, 255);
rect(125, 105, 45, 80);
fill(255, 255, 0);
ellipse(160, 150, 10, 10);
