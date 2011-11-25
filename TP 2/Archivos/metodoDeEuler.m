% Funci�n que aplica el m�todo de Euler para resolver una ecuaci�n
% diferencial ordinaria a partir de un valor inicial dado.

% PRE-CONDICIONES
% 'f': funci�n expresada como cadena de caracteres (string)
% (ej: si la EDO es y' = y + t^2, debe pasarse 'y + t^2');
% 'a': extremo izquierdo del intervalo;
% 'b': extremo derecho del intervalo;
% 'u0': condici�n inicial de la funci�n;
% 'h': tama�o del paso.

% POST-CONDICIONES
% Se devuelve una matriz de dos columnas por N filas, siendo 
% N = (b-a)/h. La primer columna alberga los pasos en los que fue
% aplicado el m�todo y la segunda columna almacena el resultado
% obtenido en cada paso.

function matrizDeResultados = metodoDeEuler(f,a,b,u0,h)

% Transformamos la cadena de caracteres que representa a la funci�n
% en una funci�n entendible por MATLAB.
f = inline(f);

% Calculamos el n�mero de intervalos N.
N = (b-a)/h;

% Creamos el vector U que contiene los resultados de cada paso,
% insertando la condici�n inicial en el primer �ndice.
U = zeros(1,N+1);
U(1) = u0;

% Creamos el vector auxiliar P que contiene los pasos en donde se
% aplic� el m�todo.
P = zeros(1, N+1);
P = a:h:b;

% Iteramos para aplicar el m�todo.
for j=1:N
    
    U(j+1) = U(j)+ (h * f(P(j),U(j)));
    
end

% Creamos una matriz que esta formada por los vectores P y U 
% traspuestos.
matrizDeResultados = [P' U'];

