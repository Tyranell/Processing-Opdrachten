int leeftijd = (int) random(0, 100);

println("De leeftijd van dit persoon is: " + leeftijd + ".");
if (leeftijd < 2) {
  println("Zij zijn een baby!");
} else if (leeftijd >= 2 && leeftijd < 4) {
  println("Zij zijn een kleuter!");
} else if (leeftijd >= 4 && leeftijd < 12) {
  println("Zij zijn een kind!");
} else if (leeftijd >= 12 && leeftijd < 20) {
  println("Oh god, zij zijn een tiener.");
} else if (leeftijd >= 20 && leeftijd < 25) {
  println("Zij zijn een adolescent!");
} else {
  println("Zij zijn een volwassenen. Sterkte.");
} 
