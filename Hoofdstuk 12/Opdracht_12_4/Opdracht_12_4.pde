int timeInMil;
int timeInSec;
int timeInMin;
int timeInHr;
int frameRateCounter;
boolean started = false;
boolean starter;

void setup() {
  size(500, 500);
  frameRate(100);
}

void draw() {
  background(255);
  if (started) {
    frameRateCounter++;
    if (frameRateCounter > 0 && frameRateCounter % 10 == 0) {
      timeInMil++;
    }
    if (timeInMil == 10) {
      timeInSec++;
      timeInMil = 0;
    }
    if (timeInSec == 60) {
      timeInMin++;
      timeInSec = 0;
    }
    if (timeInMin == 60) {
      timeInHr++;
      timeInMin = 0;
    }
  }
  textAlign(CENTER);
  fill(0);
  textSize(75);
  text(nf(timeInHr, 2) + ":" + nf(timeInMin, 2) + ":" + nf(timeInSec, 2) + "." + nf(timeInMil, 1), width / 2, height / 2);
}

void keyPressed() {
  if (key == 'a' && started == false) {
    starter = true;
  }
  if (key == 'a' && started == true) {
    starter = false;
  }
  if (key == 'r') {
    timeInMil = 0;
    timeInSec = 0;
    timeInMin = 0;
    timeInHr = 0;
  }
  started = starter;
}
