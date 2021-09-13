int getalDag = (int) random(1, 11);

switch(getalDag) {
  case 1:
  case 2:
  case 3:
    println("Het cijfer is slecht!");
    break;
  case 4:
    println("Het cijfer is onvoldoende!");
    break;
  case 5:
    println("Het cijfer is matig.");
    break;
  case 6:
  case 7:
    println("Het cijfer is voldoende!");
    break;
  case 8:
  case 9:
  case 10:
    println("Het cijfer is goed!");
    break;
  default:
    println("Dat is een verkeerd cijfer.");
    break;
}
