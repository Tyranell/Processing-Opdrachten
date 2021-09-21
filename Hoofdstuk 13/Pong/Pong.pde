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

//Puts up sketch size
void setup() {
  size(780, 480);
}

void draw() {
  //60 FPS because it is the generally accepted minimum for games
  frameRate(60);

  //Black background, since the original pong also had no background
  background(0);

  //White pads and ball, same as the original
  fill(255);
  rect(rightPadX, rightPadY, padWidth, padHeight);
  rect(leftPadX, leftPadY, padWidth, padHeight);
  rect(ballX, ballY, ballWidth, ballHeight);

  //Calls up these methods
  accelPads();
  movePads();
  accelBall();
  scoreCount();

  /* Limits the movement of the pads and makes it so 
   they can only go so fast instead of going insanely fast */
  leftPadMovementY *= 0.75;
  rightPadMovementY *= 0.75;

  //Prints something when the game hasn't started yet.
  if (gameStart == false) {
    textSize(25);
    text("Press T to Start!", 300, 400);
  }

  //Prints the score for both sides when the game has started
  if (gameStart == true) {
    textSize(40);
    text(scoreLeft, 75, 50);
    text(scoreRight, 685, 50);
  }

  //Keeps the ball within the game vertically, so it doesn't fly off from the top or bottom
  if (ballY < 0 || ballY > (height - 20)) {
    ballMovementY *= -1;
  }

  /* Bounces the ball from the left/right pad 
   AND accelerates it a bit when it does get bounced by a player */
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

  //Makes it so the pads also don't fly off the top or bottom of the screen.
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

//Accelerates the pads up or down when their up or down buttons are pressed
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

//Makes it so the calculation for up and down movement is actually done
void movePads() {
  rightPadY += rightPadMovementY;
  leftPadY += leftPadMovementY;
}

/* Grabs a random int from an array to determine the initial x-axis and 
 y-axis movement speed of the ball. */
void moveBall() {
  int i = (int) random(0, 4);
  ballMovementX = ballMovementArrayX[i];
  int j = (int) random(0, 6);
  ballMovementY = ballMovementArrayY[j];
}

//Makes it so the acceleration of the ball actually happens
void accelBall() {
  ballX += ballMovementX;
  ballY += ballMovementY;
}

//Counts the score for each side and resets the ball to the middle
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
  //Resets ball to middle
  ballX = (ballWidth / 2) + 375;
  ballY = (ballHeight / 2) + 225;

  /* Randomizes new initial direction... still trying to make 
   this have a second or so of delay instead of going instantly */
  int i = (int) random(0, 4);
  ballMovementX = ballMovementArrayX[i];
  int j = (int) random(0, 6);
  ballMovementY = ballMovementArrayY[j];
}

void keyPressed() {
  //Up and Down arrow buttons for the right pad up/down
  if (keyCode == 38) {
    rightUp = true;
  }
  if (keyCode == 40) {
    rightDown = true;
  }

  //W and S for left pad up/down
  if (key == 'W' || key == 'w') {
    leftUp = true;
  }
  if (key == 'S' || key == 's') {
    leftDown = true;
  }

  //T to start the game if it hasn't started already
  if ((key == 'T' || key == 't') && gameStart == false) {
    gameStart = true;
    moveBall();
  }

  //R to reset the game if it has started
  if ((key == 'R' || key == 'r') && gameStart == true) {
    gameStart = false;
    reset();
  }
}

//Resets game to what it was before the start
void reset() {
  frameCount = -1;
  ballX = (ballWidth / 2) + 375;
  ballY = (ballHeight / 2) + 225;
  ballMovementX = 0;
  ballMovementY = 0;
  leftPadY = 205;
  rightPadY = 205;
}

//Just checks if keys are released so the pads' momentum stops
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
