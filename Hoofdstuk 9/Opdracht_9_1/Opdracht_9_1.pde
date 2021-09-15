int getal1 = (int) random(0, 501);
int getal2 = (int) random(0, 501);

void setup() {
  rekenMethode();
}

void rekenMethode() {
  float average = (float) (getal1 + getal2) / 2;
  println("Het gemiddelde van " + getal1 + " en " + getal2 + " is: " + average);
}
