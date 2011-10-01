% Funci�n que a partir de una fotograf�a completa de un objeto sometido a
% un calentamiento no uniforme, genera un gr�fico de temperaturas del mismo
% y encuentra el punto m�s caliente.
function [] = tp1ItemC()

    % Configuraci�n
    nombreImagen = '1160.tif';
    directorio = 'Matrices/';
    dimM = 480;
    dimN = 640;
    
    % Procesamos el archivo de la imagen.
    matrizDeImagen =imread(strcat(directorio, nombreImagen));
    %Generamos una matriz nueva de iguales dimensiones a la imagen.
    matrizDeTemperaturasDeImagen = zeros(dimM, dimN);
    
    % Calculamos la temperatura de cada pixel de la imagen y la almacenamos
    % en la respectiva matriz.
    for i = 1:dimM
        for j = 1:dimN
        
            matrizDeTemperaturasDeImagen(i,j) = 490.05 * ( ( double(matrizDeImagen(i,j)) ) ^ 0.2);
           
        end
    end

    % Imprimimos la temperatura m�xima de la imagen
    strcat('Temperatura m�xima: ', num2str(max(max(matrizDeTemperaturasDeImagen))), '�C')
    
    % Generamos el gr�fico 3D de temperaturas.
    x = 1:1:640;
    y = 1:1:480;
    [X,Y] = meshgrid(x,y);
    
    mesh(X,Y,matrizDeTemperaturasDeImagen)
    title('GR�FICO DE TEMPERATURAS DE UNA IMAGEN')
    colorbar
    xlabel('Ancho')
    ylabel('Alto')
    zlabel('Temperatura')