float cijfer = 7.9;
boolean diploma = false;
boolean cumlaude = false;

if (cijfer >= 5.5 && cijfer < 8) {
  diploma = true;
} else if (cijfer >= 8) {
  diploma = true;
  cumlaude = true;
}

if (diploma == true && cumlaude == false) {
  println("Gefeliciteerd, je hebt je diploma berijkt!");
} else if (diploma == true && cumlaude == true) {
  println("Gefeliciteerd, je hebt je diploma berijkt EN je bent cumlaude geslaagd, dat is al helemaal knap!");
}
