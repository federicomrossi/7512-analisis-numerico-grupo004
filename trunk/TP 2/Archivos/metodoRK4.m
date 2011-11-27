% Función que utiliza el método de Runge-Kutta de orden 4 para la 
% resolución de EDO's con un valor inicial.

% PRECONDICIONES
% 'f': función que se desea procesar, la cual debe pasada como una function 
% handler (ej: @miFuncion). Esta debe tener dos parametros: una variable 
% independiente y una variable dependiente de la primera.
% 'a': Extremos izquierdo del intervalo;
% 'b': Extremos derecho del intervalo;
% 'u0': Condición inicial de la función;
% 'h': Tamaño de paso.

% POSTCONDICIONES
% Se devuelve una matriz de M filas y dos columnas.
% En la primera columna se guardan los instantes de tiempo en los cuales
% fue aplicado el método, en la segunda columna, los resultados obtenidos
% a cada instante
function matrizDeResultados = metodoRK4(f,a,b,u0,h)

% Se calcula el número de intervalos 'M' dividiendo el largo total
% del intervalo (a,b) por el tamaño del paso 'h'
M = (b-a)/h;

% Se inicializa un vector de tamaño M+1, el cual alberga los instantes  
% de tiempo donde se utilizó el método
T = zeros(1,M+1);
T = a:h:b;

% Se crea el vector de ceros donde se guardarán los resultados obtenidos
% en cada paso. 
U = zeros(1,M+1);
% Guardamos la condición inicial en la primera posición
U(1) = u0;

% Iteramos para aplicar el método.
for j=1:M
   
    % Calculamos los coeficientes necesarios para la utilización del método
    q1 = h * f(T(j),U(j));
    q2 = h * f(T(j)+h/2,U(j)+q1/2);
    q3 = h * f(T(j)+h/2,U(j)+q2/2);
    q4 = h * f(T(j)+h,U(j)+q3);
    
    U(j+1) = U(j)+(q1+2*q2+2*q3+q4)/6;
    
end

% Creamos una matriz que esta formada por los vectores T y U 
% traspuestos.
matrizDeResultados = [T' U'];