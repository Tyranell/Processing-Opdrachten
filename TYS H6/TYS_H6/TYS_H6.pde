int leeftijd = 22;
float lengte = 1.91;
float gewicht = 138;
float BMI = 0;

BMI = gewicht / (lengte * lengte);
BMI *= 10;
BMI = round(BMI);
BMI /= 10;
println(BMI);

size(250, 250);
background(255);

rect(10, 30, 100, 30);
rect(10, 80, 100, 30);
rect(10, 130, 100, 30);

fill(0);
textSize(15);
text("Leeftijd: ", 10, 27);
text("Lengte: ", 10, 77);
text("Gewicht: ", 10, 127);

text(leeftijd + " jaar", 15, 50);
text(lengte + "m", 15, 100);
text(gewicht + "kg", 15, 150);

if (leeftijd >= 16 && leeftijd <= 69) {
  if (BMI < 18.5) {
    fill(255, 255, 0);
  } else if (BMI >= 18.5 && BMI < 25) {
    fill(0, 255, 0);
  } else if (BMI >= 25 && BMI < 30) {
    fill(255, 165, 0);
  } else {
    fill(255, 0, 0);
  }
} else if (leeftijd >= 70) {
    if (BMI < 22) {
      fill(255, 255, 0);
    } else if (BMI >= 22 && BMI < 28) {
      fill(0, 255, 0);
    } else if (BMI >= 28 && BMI < 30) {
      fill(255, 165, 0);
    } else {
      fill(255, 0, 0);
    }
}

textSize(25);
text("BMI: " + BMI, 72, 212.5);
