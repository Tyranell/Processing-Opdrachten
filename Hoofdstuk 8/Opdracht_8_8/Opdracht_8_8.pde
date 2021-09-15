int getal1 = 0;
int getal2 = 1;
int som = getal1 + getal2;

for (int i = 0; i < 21; i++) {
  if (i == 0) {
    print(getal1 + ", ");
  } else if (i == 1) {
    print(getal2 + ", ");
  } else if (i < 20 && (i != 0 || i != 1)) {
    print(som + ", ");
    getal1 = getal2;
    getal2 = som;
    som = getal1 + getal2;
  } else if (i == 20) {
    print(som);
  }
}
