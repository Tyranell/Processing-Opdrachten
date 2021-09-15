void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  background(255);
  boom();
}

void boom() {
  stroke(37, 21, 11);
  fill(37, 21, 11);
  rect(200, 240, 50, 250);
  stroke(45, 90, 39);
  fill(45, 90, 39);
  triangle(225, 10, 170, 240, 280, 240);
}
