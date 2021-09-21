//Keeps track of the score on each side
int scoreLeft = 0;
int scoreRight = 0;

/* All variables for the ball, including ensuring 
 that it starts off in the middle of the screen */
float ballWidth = 20; 
float ballHeight = 20; 
float ballMovementX, ballMovementY;
float ballX = (ballWidth / 2) + 375;
float ballY = (ballHeight / 2) + 225;
int[] ballMovementArrayX = {-3, -2, 2, 3};
int[] ballMovementArrayY = {-3, -2, -1, 1, 2, 3};

/* Variables for the pad to ensure that they are on the edges of the screen
 and that they start in the middle of the screen */
float leftPadY = 205;
float leftPadX = 20;
float rightPadY = 205;
float rightPadX = 740;

//Variables for the pads width and height, mostly for collision purposes
float padWidth = 20;
float padHeight = 70;

//Variable that is used to allow the pads to move up and down
float leftPadMovementY, rightPadMovementY;

//Checks if the Up/Down keys for each pad are pressed
boolean leftUp, leftDown, rightUp, rightDown;

//Checks if the game has been started
boolean gameStart = false;


void setup() {
  size(780, 480);
}

void draw() {
  frameRate(60);
  background(0);

  fill(255);
  rect(rightPadX, rightPadY, padWidth, padHeight);
  rect(leftPadX, leftPadY, padWidth, padHeight);
  rect(ballX, ballY, ballWidth, ballHeight);

  accelPads();
  movePads();

  accelBall();

  scoreCount();

  leftPadMovementY *= 0.75;
  rightPadMovementY *= 0.75;

  if (gameStart == false) {
    textSize(25);
    text("Press T to Start!", 300, 400);
  }

  if (gameStart == true) {
    textSize(40);
    text(scoreLeft, 75, 50);
    text(scoreRight, 685, 50);
  }

  if (ballY < 0 || ballY > (height - 20)) {
    ballMovementY *= -1;
  }

  if (ballY < (leftPadY + padHeight) && ballY > leftPadY - 20) {
    if (ballX < (leftPadX + padWidth) && ballX > leftPadX) {
      ballMovementX *= -1.05;
    }
  }
  if (ballY < (rightPadY + padHeight) && ballY > rightPadY - 20) {
    if (ballX > (rightPadX - padWidth) && ballX < rightPadX) {
      ballMovementX *= -1.05;
    }
  }

  if (leftPadY + padHeight > height) {
    leftPadMovementY *= 0;
    leftPadY = height - padHeight;
  }
  if (leftPadY < 0) {
    leftPadMovementY *= 0;
    leftPadY = 0;
  }

  if (rightPadY + padHeight > height) {
    rightPadMovementY *= 0;
    rightPadY = height - padHeight;
  }
  if (rightPadY < 0) {
    rightPadMovementY *= 0;
    rightPadY = 0;
  }
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
  int i = (int) random(0, 4);
  ballMovementX = ballMovementArrayX[i];
  int j = (int) random(0, 6);
  ballMovementY = ballMovementArrayY[j];
}

void accelBall() {
  ballX += ballMovementX;
  ballY += ballMovementY;
}

void scoreCount() {
  if (ballX < 0) {
    scoreRight++;
    ballReset();
  }

  if (ballX > width) {
    scoreLeft++;
    ballReset();
  }
}

void ballReset() {
  ballX = (ballWidth / 2) + 375;
  ballY = (ballHeight / 2) + 225;
  int i = (int) random(0, 4);
  ballMovementX = ballMovementArrayX[i];
  int j = (int) random(0, 6);
  ballMovementY = ballMovementArrayY[j];
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

  if ((key == 'T' || key == 't') && gameStart == false) {
    gameStart = true;
    moveBall();
  }

  if ((key == 'R' || key == 'r') && gameStart == true) {
    gameStart = false;
    reset();
  }
}

void reset() {
  frameCount = -1;
  ballX = (ballWidth / 2) + 375;
  ballY = (ballHeight / 2) + 225;
  ballMovementX = 0;
  ballMovementY = 0;
  leftPadY = 205;
  rightPadY = 205;
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
