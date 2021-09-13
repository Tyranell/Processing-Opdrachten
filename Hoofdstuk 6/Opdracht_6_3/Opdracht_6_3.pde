float cijfer = random(1, 10);
cijfer *= 10;
cijfer = (int) cijfer;
cijfer /= 10;

println("Het cijfer dat je hebt gehaald is: " + cijfer);
if (cijfer >= 5.5) {
  println("Je hebt een voldoende!");
} else {
  println("Je hebt een onvoldoende!");
}
