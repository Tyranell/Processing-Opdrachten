PImage gkTermi;
PImage gkStrike;
PImage gkCrusade;

void setup() {
  size(1675, 900);
  gkTermi = loadImage("Images/GKStrikeColor.jpg");
  gkStrike = loadImage("Images/GKStriker.jpg");
  gkCrusade = loadImage("Images/GKArt9th.jpg");
}

void draw() {
  image(gkTermi, 0, 0);
  image(gkStrike, 490, 0);
  image(gkCrusade, 1082, 0);
}
