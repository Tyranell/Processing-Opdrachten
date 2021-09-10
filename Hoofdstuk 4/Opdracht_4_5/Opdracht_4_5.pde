//Willekurig hoeveelheid seconden
float r = (int) random(0, 31556926);

//Uitrekenen hoeveel uren het zijn en dat in 2 decimalen aangeven
float rInUren = r / 3600; 
rInUren *= 100;
rInUren = (int) rInUren;
rInUren /= 100;

//Uitrekenen alleen hoeveel hele uren het zijn
int rInHeleUren = (int) rInUren;

//Uitrekenen hoeveel dagen het zijn en dat in decimaal aangeven
float rInDagen = r / 86400;
rInDagen *= 10;
rInDagen = (int) rInDagen;
rInDagen /= 10;

//Uitreken alleen hoeveel hele dagen het zijn
int rInHeleDagen = (int) rInDagen;

//Uitrekenen hoeveel jaren het zijn en dat in 5 decimalen aangeven
float rInJaren = r / 31556925.445;
rInJaren *= 100000;
rInJaren = (int) rInJaren;
rInJaren /= 100000;


println("Seconden: " + r);
println("Uren: " + rInUren + " of " + rInHeleUren + " hele Uren.");
println("Dagen: " + rInDagen + " of " + rInHeleDagen + " hele Uren.");
println("Jaren: " + rInJaren + ".");
