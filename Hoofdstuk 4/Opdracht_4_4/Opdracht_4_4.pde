//Methode 1
float raarGetal1 = 4.976142;

raarGetal1 *= 10;
raarGetal1 = (int) raarGetal1;
raarGetal1 /= 10;

println(raarGetal1);

//Methode 2
float raarGetal2 = 4.976142;

raarGetal2 *= 1000;
raarGetal2 = (int) raarGetal2;
raarGetal2 /= 100;
raarGetal2 = (int) raarGetal2;
raarGetal2 /= 10;

println(raarGetal2);
