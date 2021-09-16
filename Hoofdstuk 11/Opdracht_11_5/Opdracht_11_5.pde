boolean inLijst;
String[] namen = {"Damian", "Jan", "Victor", "Nienke", "Izzy"};

void setup() {
  inLijst = false;
  for (int i = 0; i < namen.length; i++) {
    if (namen[i] == "Jan") {
      inLijst = true;
    }
  }
  println(inLijst);
}

void draw() {
}
