int leftKeyPress;

void setup() {
  size(500, 500);
}

void draw() {
}

void printMousePress() {
  println(leftKeyPress + " at " + millis() + " milliseconds.");
}

void mousePressed() {
  if (mouseButton == LEFT && millis() < 10000) {
    leftKeyPress++;
    printMousePress();
  } else if (mouseButton == LEFT && millis() >= 10000) {
    println("Amount of key presses in 10 seconds: " + leftKeyPress);
  }
}
