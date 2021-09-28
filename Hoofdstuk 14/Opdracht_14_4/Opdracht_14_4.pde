import controlP5.*;
import processing.sound.*;

Button button1;
Button button2;
Button button3;

SoundFile come;
SoundFile faith;
SoundFile emperor;

void setup() {
  size(200, 200);
  ControlP5 cp = new ControlP5(this);

  button1 = cp.addButton("Come").setPosition(0, 0).setSize(50, 20).setCaptionLabel("COME!");
  button2 = cp.addButton("MyFaith").setPosition(60, 0).setSize(50, 20).setCaptionLabel("MY FAITH!");
  button3 = cp.addButton("TheEmperor").setPosition(120, 0).setSize(60, 20).setCaptionLabel("THE EMPEROR!");

  come = new SoundFile(this, "Sounds/COME SHOW ME.mp3");
  come.rate(1);
  come.amp(1);

  faith = new SoundFile(this, "Sounds/MY FAITH IS MY SHIELD.mp3");
  faith.rate(1);
  faith.amp(1);

  emperor = new SoundFile(this, "Sounds/THE EMPEROR PROTECTS US.mp3");
  emperor.rate(1);
  emperor.amp(1);
}

void draw() {
}

void Come() {
  come.play();
}

void MyFaith() {
  faith.play();
}

void TheEmperor() {
  emperor.play();
}
