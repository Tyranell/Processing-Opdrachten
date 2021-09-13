//Simpele versie waarbij je de booleans zelf moet aanpassen
boolean quest1 = false;
boolean quest2 = true;
boolean quest3 = true;

if (quest1 == true && quest2 == true && quest3 == true) {
  println("Gefeliciteerd, je hebt de game gehaald door alle 3 de questen af te hebben!");
} else {
  println("Het ziet er naar uit dat één of meer questen nog niet af zijn!");
}

/* Moeilijkere versie waarbij de true/false statements bepaald worden door randomness
boolean quest1 = false;
boolean quest2 = false;
boolean quest3 = false;

int quest1Num = (int) random(1, 3);
int quest2Num = (int) random(1, 3);
int quest3Num = (int) random(1, 3);

if (quest1Num == 2) {
  quest1 = true;
}

if (quest2Num == 2) {
  quest2 = true;
}

if (quest3Num == 2) {
  quest3 = true;
}

println("Quest 1 done? " + quest1);
println("Quest 2 done? " + quest2);
println("Quest 3 done? " + quest3);

if (quest1 == true && quest2 == true && quest3 == true) {
  println("Gefeliciteerd, je hebt de game gehaald door alle 3 de questen af te hebben!");
} else {
  println("Het ziet er naar uit dat één of meer questen nog niet af zijn!");
} 
*/
