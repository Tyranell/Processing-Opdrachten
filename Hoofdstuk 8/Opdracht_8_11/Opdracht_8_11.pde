size(220, 220);
background(255);

int x = 10;
int y = 10;

for(int i = 0; i < 10; i++) {
  for(int j = 0; j < 10; j++) {
    rect(x, y, 20, 20);
    y += 20;
  }
  y = 10;
  x += 20;
}
