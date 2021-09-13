int getalDag = (int) random(1, 8);

switch(getalDag) {
  case 1:
    println("Het is Maandag!");
    break;
  case 2:
    println("Het is Dinsdag!");
    break;
  case 3:
    println("Het is Woensdag!");
    break;
  case 4:
    println("Het is Donderdag!");
    break;
  case 5:
    println("Het is Vrijdag!");
    break;
  case 6:
    println("Het is Zaterdag!");
    break;
  case 7:
    println("Het is Zondag!");
    break;
  default:
    println("Dat is geen dag van de week.");
    break;
}
