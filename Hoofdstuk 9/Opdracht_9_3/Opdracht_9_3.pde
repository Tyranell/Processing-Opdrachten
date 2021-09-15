float rekenAvg;

void setup() {
  //rekenAvg = rekenMethode((int) random(1, 31), (int) random(1, 31));
  rekenAvg = rekenMethode(10, 9);
  println(rekenAvg);
}

float rekenMethode(float getal1, float getal2) {
  float average = (float) (getal1 + getal2) / 2;
  return average;
}
