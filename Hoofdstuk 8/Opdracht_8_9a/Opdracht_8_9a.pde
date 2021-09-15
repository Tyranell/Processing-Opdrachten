size(600, 600);
background(255);

int sizeC = 10;
noFill();

for (int i = 1; i <= 51; i++) {
  ellipse(300, 300, sizeC * i, sizeC * i);
  println(sizeC * i);
}
