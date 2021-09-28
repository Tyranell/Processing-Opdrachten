import processing.sound.*;

SoundFile faith;

void setup() {
 faith = new SoundFile(this, "Sounds/MY FAITH IS MY SHIELD.mp3");
 faith.rate(1);
 faith.amp(1);
}

void draw() {
  faith.play();
  noLoop();
}
