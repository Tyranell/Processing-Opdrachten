//Variabelen voor de som
int a = 5;
int b = 9;
int c = 2;
int d = 7;

//De sommen, specifiek om het verschil te laten zien
int som1 = a + c * d - b;
int som2 = (a + c) * d - b;
int som3 = a + c * (d - b);

//Printen van alle sommen
println(a + " + " + c + " * " + d + " - " + b + " = " + som1);
println("(" + a + " + " + c + ") * " + d + " - " + b + " = " + som2);
println(a + " + " + c + " * (" + d + " - " + b + ") = " + som3);
