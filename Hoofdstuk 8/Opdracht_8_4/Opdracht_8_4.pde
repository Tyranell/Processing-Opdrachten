size(200, 200);
background(255);

int xWaarde = 10;
int yWaarde = 35;

for (int i = 0; i < 5; i++) {
  for (int j = 0; j < 2; j++) {
    rect(xWaarde, yWaarde, 35, 35);
    yWaarde += 35;
  }
  yWaarde = 35;
  xWaarde += 35;
}
