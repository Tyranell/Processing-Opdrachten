float ballWidth = 20; 
float ballHeight = 20; 
float ballMovementX, ballMovementY;
float ballX = (ballWidth / 2) + 375;
float ballY = (ballHeight / 2) + 225;

float leftPadY = 205; 
float rightPadY = 205;
float leftPadMovementY, rightPadMovementY;
boolean leftUp, leftDown, rightUp, rightDown;

boolean gameStart = false;


void setup() {
  size(780, 480);
}

void draw() {
  background(0);

  fill(255);
  rect(740, rightPadY, 20, 70);
  rect(20, leftPadY, 20, 70);
  rect(ballX, ballY, ballWidth, ballHeight);

  accelPads();
  movePads();

  accelBall();

  leftPadMovementY *= 0.75;
  rightPadMovementY *= 0.75;
}

void accelPads() {
  if (rightUp) {
    rightPadMovementY -= 2;
  }
  if (rightDown) {
    rightPadMovementY += 2;
  }

  if (leftUp) {
    leftPadMovementY -= 2;
  }
  if (leftDown) {
    leftPadMovementY += 2;
  }
}

void movePads() {
  rightPadY += rightPadMovementY;
  leftPadY += leftPadMovementY;
}

void moveBall() {
  ballMovementX -= random(-3, 3);
  ballMovementY -= random(-3, 3);
}

void accelBall() {
  ballX += ballMovementX;
  ballY += ballMovementY;
}

void keyPressed() {
  if (keyCode == 38) {
    rightUp = true;
  }
  if (keyCode == 40) {
    rightDown = true;
  }

  if (key == 'W' || key == 'w') {
    leftUp = true;
  }
  if (key == 'S' || key == 's') {
    leftDown = true;
  }

  if (key == 'T' || key == 't') {
    gameStart = true;
    moveBall();
  }
}

void keyReleased() {
  if (keyCode == UP) {
    rightUp = false;
  }
  if (keyCode == DOWN) {
    rightDown = false;
  }

  if (key == 'W' || key == 'w') {
    leftUp = false;
  }
  if (key == 'S' || key == 's') {
    leftDown = false;
  }
}
