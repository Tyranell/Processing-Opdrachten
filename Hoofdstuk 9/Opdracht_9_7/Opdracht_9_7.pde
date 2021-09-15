void setup() {
  size(520, 220);
  noLoop();
}

void draw() {
  background(255);
  muur();
}

void muur() {
  int x = 10;
  int y = 10;

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      stroke(255);
      fill(255, 0, 0);
      rect(x, y, 50, 20);
      y += 20;
    }
    y = 10;
    x += 50;
  }
}
