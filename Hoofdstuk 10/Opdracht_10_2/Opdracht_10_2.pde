import controlP5.*;
ControlP5 cp;
Button knop1;
Textfield tf1;

void setup() {
  size(200, 200);

  cp = new ControlP5(this);
  knop1 = cp
            .addButton("Knop1")
            .setPosition(132, 120);
  knop1.setCaptionLabel("Klik mij");
  
  tf1 = cp
          .addTextfield("TextInput1")
          .setPosition(10, 100)
          .setCaptionLabel("Type je naam hier!")
          .setColorLabel(color(0))
          .setAutoClear(false);
}

void draw() {
  background(255);
}

void Knop1() {
  println("Hoi mijn naam is: " + tf1.getText());
}
