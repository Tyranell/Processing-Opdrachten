//Int variabelen voor gewicht, lengte in m en BMI
int lengte = 190;
int gewicht = 138;
int bmi = (gewicht * 10000) / (lengte * lengte);

//String variabelen voor het laten zien van gewicht, lengte en BMI
String strGewicht = "Met een gewicht van " + gewicht + " kg";
String strLengte = " en een lengte van " + lengte + " cm,";
String strBMI = " is jouw BMI " + bmi + ".";

//Print de strings.
println(strGewicht + strLengte + strBMI); 

/*Dit is the mooiste uitwerking die ik kon krijgen zonder floats te gebruiken. 
Met floats zou het er meer zo uitzien 

//Int variabelen voor gewicht, lengte in m en BMI
float lengte = 1.90;
int gewicht = 138;
int bmi = (int) (gewicht / (lengte * lengte));

//String variabelen voor het laten zien van gewicht, lengte en BMI
String strGewicht = "Met een gewicht van " + gewicht + " kg";
String strLengte = " en een lengte van " + (int) (lengte * 100) + " cm,";
String strBMI = " is jouw BMI " + bmi + ".";

//Print de strings.
println(strGewicht + strLengte + strBMI);*/
