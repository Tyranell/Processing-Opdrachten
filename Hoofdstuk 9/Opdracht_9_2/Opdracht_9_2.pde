void setup() {
  rekenMethode((int) random(1, 31), (int) random(1, 31));
}

void rekenMethode(float getal1, float getal2) {
  float average = (float) (getal1 + getal2) / 2;
  println("Het gemiddelde van " + getal1 + " en " + getal2 + " is: " + average);
}
