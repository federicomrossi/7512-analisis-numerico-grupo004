% Funci�n que utiliza el m�todo de Runge-Kutta de orden 4 para la 
% resoluci�n de EDO's con un valor inicial.

% PRECONDICIONES
% 'f': funci�n que se desea procesar, la cual debe pasada como una function 
% handler (ej: @miFuncion). Esta debe tener dos parametros: una variable 
% independiente y una variable dependiente de la primera.
% 'a': Extremos izquierdo del intervalo;
% 'b': Extremos derecho del intervalo;
% 'u0': Condici�n inicial de la funci�n;
% 'h': Tama�o de paso.

% POSTCONDICIONES
% Se devuelve una matriz de M filas y dos columnas.
% En la primera columna se guardan los instantes de tiempo en los cuales
% fue aplicado el m�todo, en la segunda columna, los resultados obtenidos
% a cada instante
function matrizDeResultados = metodoRK4(f,a,b,u0,h)

% Se calcula el n�mero de intervalos 'M' dividiendo el largo total
% del intervalo (a,b) por el tama�o del paso 'h'
M = (b-a)/h;

% Se inicializa un vector de tama�o M+1, el cual alberga los instantes  
% de tiempo donde se utiliz� el m�todo
T = zeros(1,M+1);
T = a:h:b;

% Se crea el vector de ceros donde se guardar�n los resultados obtenidos
% en cada paso. 
U = zeros(1,M+1);
% Guardamos la condici�n inicial en la primera posici�n
U(1) = u0;

% Iteramos para aplicar el m�todo.
for j=1:M
   
    % Calculamos los coeficientes necesarios para la utilizaci�n del m�todo
    q1 = h * f(T(j),U(j));
    q2 = h * f(T(j)+h/2,U(j)+q1/2);
    q3 = h * f(T(j)+h/2,U(j)+q2/2);
    q4 = h * f(T(j)+h,U(j)+q3);
    
    U(j+1) = U(j)+(q1+2*q2+2*q3+q4)/6;
    
end

% Creamos una matriz que esta formada por los vectores T y U 
% traspuestos.
matrizDeResultados = [T' U'];