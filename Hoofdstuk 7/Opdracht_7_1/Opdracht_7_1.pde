int leeftijd = (int) random(0, 19);

println("Leeftijd: " + leeftijd);

switch(leeftijd) {
  case 0:
    println("Net begonnen aan het leven.");
    break;
  case 1:
    println("Baby");
    break;
  case 2:
  case 3:
    println("Kleuter");
    break;
  case 4:
  case 5:
  case 6:
  case 7:
  case 8:
  case 9:
  case 10:
  case 11:
    println("Kind");
    break;
  case 12:
  case 13:
  case 14:
  case 15:
  case 16:
  case 17:
  case 18:
    println("Tiener");
    break;
  default:
    println("Deze leeftijd is bij mij niet bekend.");
    break;
}
