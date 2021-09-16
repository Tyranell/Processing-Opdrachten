int startXLine;
int startYLine;
int endXLine;
int endYLine;
boolean firstPoint = true;

void setup() {
  size(500, 500);
}

void draw() {
  
}

void mousePressed() {
  if (mouseButton == LEFT && firstPoint == true) {
    startXLine = mouseX;
    startYLine = mouseY;
    firstPoint = false;
  } 
  if (mouseButton == LEFT && firstPoint == false) {
    endXLine = mouseX;
    endYLine = mouseY;
    line(startXLine, startYLine, endXLine, endYLine);
    startXLine = endXLine;
    startYLine = endYLine;
  }
}
