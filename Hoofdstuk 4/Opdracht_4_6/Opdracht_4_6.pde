//3 willekeurige cijfers tussen 1 and 10
float cijfer1 = random(1, 10);
float cijfer2 = random(1, 10);
float cijfer3 = random(1, 10);

//Gemiddeld cijfer van de 3 cijfers
float gemidCijfer = (cijfer1 + cijfer2 + cijfer3) / 3;

//Gemiddeld cijfer omzetten naar 1 decimaal achter de komma
gemidCijfer *= 10;
gemidCijfer = (int) gemidCijfer;
gemidCijfer /= 10;

//Afdrukken op de console van het gemiddelde cijfer
println("Het gemiddelde cijfer is: " + gemidCijfer);
