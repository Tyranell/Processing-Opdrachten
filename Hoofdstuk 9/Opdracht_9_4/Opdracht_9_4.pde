void setup() {
  size(200, 200);
  noLoop();
}

void draw() {
  background(255);
  //stroke(255, 0, 0);
  vierkant(20, 20, 40, 40);
}

void vierkant(int lijn1, int lijn2, int lijn3, int lijn4) {
  line(lijn1, lijn2, lijn1, lijn4);
  line(lijn1, lijn2, lijn3, lijn2);
  line(lijn3, lijn2, lijn3, lijn4);
  line(lijn1, lijn4, lijn3, lijn4);
}
