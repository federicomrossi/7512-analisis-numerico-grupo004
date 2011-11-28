% Función que convierte el archivo k.txt de datos empiricos del TP2, almacenado
% en el directorio 'mediciones', en un archivo con formato CSV.
function convertirTXTaCSV()    
    
    directorio = 'mediciones/';
    archivoI = 'k.txt';
    archivoO = 'k.csv';
    datosDeK = load([directorio archivoI]);
    dlmwrite([directorio archivoO], datosDeK, 'precision', 16);

end