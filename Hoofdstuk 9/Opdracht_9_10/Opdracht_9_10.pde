void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  background(255);
  bos();
}

void boom(int x) {
  fill(37, 21, 11);
  rect(x, 240, 50, 250);
  fill(45, 90, 39);
  triangle(x + (50 / 2), 10, (x - 30), 240, (x + 80), 240);
}

void bos() { 
  for (int i = 0; i < 20; i++) {
    boom((int) random(40, 410));
  }
}
