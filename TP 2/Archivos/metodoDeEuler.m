% Función que aplica el método de Euler para resolver una ecuación
% diferencial ordinaria a partir de un valor inicial dado.
%
% PRE-CONDICIONES
% 'f': función que se desea procesar, la cual debe pasada como una function 
% handler (ej: @miFuncion). Esta debe tener dos parametros: una variable 
% independiente y una variable dependiente de la primera.
% 'a': extremo izquierdo del intervalo;
% 'b': extremo derecho del intervalo;
% 'u0': condición inicial de la función;
% 'h': tamaño del paso.
%
% POST-CONDICIONES
% Se devuelve una matriz de dos columnas por N filas, siendo 
% N = (b-a)/h. La primer columna alberga los pasos en los que fue
% aplicado el método y la segunda columna almacena el resultado
% obtenido en cada paso.
function matrizDeResultados = metodoDeEuler(f,a,b,u0,h)

% Calculamos el número de intervalos N.
N = (b-a)/h;

% Creamos el vector U que contiene los resultados de cada paso
U = zeros(1, N+1);
U(1) = u0;

% Creamos el vector auxiliar P que contiene los pasos en donde se
% aplicó el método.
P = zeros(1, N+1);
P = a:h:b;

% Iteramos para aplicar el método.
for j=1:N
    
    U(j+1) = U(j)+ (h * f(P(j), U(j)));
    
end

% Creamos una matriz que esta formada por los vectores P y U 
% traspuestos.
matrizDeResultados = [P' U'];

