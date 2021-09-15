size(400, 400);
background(255);

int sizeC = 15;
noFill();

for (int i = 1; i <= 51; i++) {
  ellipse(0, 0, sizeC * i, sizeC * i);
  println(sizeC * i);
}
