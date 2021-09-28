PImage strike;

void setup() {
  size(1480, 78);
  strike = loadImage("Images/GKStriker.jpg");
}

void draw() {
  for (int i = 0; i < 20; i++) {
    image(strike, 0 + (74 * i), 0, 74, 78);
  }
}
