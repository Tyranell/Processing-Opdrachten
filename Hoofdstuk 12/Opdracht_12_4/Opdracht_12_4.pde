int timeInMil;
int timeInSec;
int timeInMin;
int timeInHr;
boolean stopped = true;

void setup() {
  noLoop();
}

void draw() {
  background(0);
}

void keyPressed() {
  if (key == 'a' && stopped == true) {
    stopped = !stopped;
    timeInMil = millis();
    if (timeInMil ==1000) {
      timeInSec++;
    }
  } else if (key == 'a' && stopped == false) {
    stopped = !stopped;
  }
}
