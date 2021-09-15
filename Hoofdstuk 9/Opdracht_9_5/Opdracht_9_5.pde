void setup() {
  String volledig = strPlak("So, regardless of what anybody else says, be proud of your silver dudes. ", 
  "For while they may be sometimes deployed as a preemptive force, Grey Knights are more often typically wrestling victory from the jaws of not only certain-defeat but a point where defeat has already happened. ", 
  "To win even when everything is already lost. ", 
  "They're the last prayer, they're final hail mary, the last roll of the dice.");
  println(volledig);
}

void draw() {}

String strPlak(String deel1, String deel2, String deel3, String deel4) {
  String vol = deel1 + deel2 + deel3 + deel4;
  return vol;
}
