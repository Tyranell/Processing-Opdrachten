void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  background(255);
  noFill();
  cirkels(50);
}

void cirkels(int sizeC) {
  for (int i = 1; i <= 5; i++) {
    ellipse(500, 500/2, sizeC * i, sizeC * i);
    println(sizeC * i);
    sizeC += 5;
  }
}
