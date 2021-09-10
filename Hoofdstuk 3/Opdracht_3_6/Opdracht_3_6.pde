size(640, 280);
background(255);

stroke(0);
strokeWeight(1);
line(10, 10, 210, 10);
fill(0);
text("Lijn", 100, 23);

noFill();
rect(10, 30, 200, 100);
text("Rechthoek", 80, 143);

rect(10, 148, 200, 100, 15);
text("Afgeronde Rechthoek", 55, 261);

fill(255, 0, 240);
strokeWeight(0);
rect(220, 30, 200, 100);
strokeWeight(1);
ellipse(320, 80, 200, 100);
fill(0);
text("Gevulde Rechthoek met ovaal", 240, 143);

fill(255, 0, 240);
ellipse(320, 198, 200, 100);
fill(0);
text("Gevulde ovaal", 280, 261);

noFill();
ellipse(530, 80, 200, 100);
fill(255, 0, 240);
arc(530, 80, 200, 100, 1.75 * PI, 2 * PI);
fill(0);
text("Taartpunt met ovaal eromheen", 450, 143);

noFill();
ellipse(530, 198, 100, 100);
text("Circkel", 510, 261);
