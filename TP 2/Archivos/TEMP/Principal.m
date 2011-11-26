function A = Principal()

%F = '(k-1)*(n/0.3)';
%pasos = [4,2,1,0.5];
a = 0;
b = 120;
U0= 10^10;
h1 = 4;

%p4 = obtenerValorK(pasos(1));
%p2 = obtenerValorK(pasos(2));
%p1 = obtenerValorK(pasos(3));
%p05 = obtenerValorK(pasos(4));

e4 = metodoDeEuler(@tp2Ecuacion, a , b , U0 , h);
%e2 = metodoDeEulerDiego (F, a , b , U0 , 2 , p2);
%e1 = metodoDeEulerDiego (F, a , b , U0 , 1 , p1);
%e05 = metodoDeEulerDiego (F, a , b , U0 , 0.5 , p05);

A = e4;
%[B] = (e2);
%[C] = (e1);
%[D] = (e05);