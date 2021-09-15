size(200, 200);
background(255);

int sizeC = 20;
noFill();

for (int i = 1; i <= 5; i++) {
  ellipse(200, 100, sizeC * i, sizeC * i);
  println(sizeC * i);
  sizeC += 5;
}
