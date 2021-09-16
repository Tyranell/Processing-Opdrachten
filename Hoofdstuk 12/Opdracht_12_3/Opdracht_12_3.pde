void setup() {
  size(500, 500);
}

void draw() {
}

void printMousePress() {
  noStroke();
  fill(random(0, 256), random(0, 256), random(0, 256));
  rect(mouseX -10 , mouseY -10, 20, 20);
}

void mousePressed() {
  if (mouseButton == LEFT) {
    printMousePress();
  }
}
