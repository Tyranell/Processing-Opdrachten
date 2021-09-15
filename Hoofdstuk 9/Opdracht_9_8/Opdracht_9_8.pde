void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  background(255);
  noFill();
  tekenDriehoek((int) random(10, 491), (int) random(10, 491), (int) random(10, 491), 
    (int) random(10, 491), (int) random(10, 491), (int) random(10, 491));
  //tekenDriehoek(
}

void tekenDriehoek(int x1, int y1, int x2, int y2, int x3, int y3) {
  // teken een driehoek m.b.v. de meegegeven data (parameters)
  //triangle(x1, y1, x2, y2, x3, y3);
  line(x1, y1, x2, y2);
  line(x2, y2, x3, y3);
  line(x3, y3, x1, y1);
}
