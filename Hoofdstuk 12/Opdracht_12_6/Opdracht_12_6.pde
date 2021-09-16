int x = 250;
int y = 250;
void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  fill(0, 0, 255);
  rect(x, y, 20, 20);
}

void keyPressed() {
  if (keyCode == 37) {
    x -= 10;
  }
  if (keyCode == 39) {
    x += 10;
  }
  if (keyCode == 38) {
    y -= 10;
  }
  if (keyCode == 40) {
    y += 10;
  }
}
