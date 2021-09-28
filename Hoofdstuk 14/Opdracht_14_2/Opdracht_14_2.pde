PImage gkStrike;

void setup() {
  size(800, 400);
  gkStrike = loadImage("Images/GKStriker.jpg");
}

void draw() {
  image(gkStrike, 0, 0, width, height);
}
