program ejercicio20;


const
  FILAS = 3;
  COLUMNAS = 3;

type
  Matriz = array[1..FILAS, 1..COLUMNAS] of Integer;

function trazaMatriz(var A: Matriz): integer;
    var i, j, suma: integer;
begin 

    suma := 0;
    for i := 1 to FILAS do begin
        for j := 1 to COLUMNAS do begin 
            if i = j then begin
                suma := suma + A[i][j];
            end;
        end;
    end;
    trazaMatriz := suma;
end;
var
  matrizCuadrada: Matriz;
  i, j: Integer;

begin
  // Asignar valores a la matriz
  for i := 1 to FILAS do
    for j := 1 to COLUMNAS do
      matrizCuadrada[i, j] := i * j;

  // Mostrar la matriz
  writeln('Matriz:');
  for i := 1 to FILAS do
  begin
    for j := 1 to COLUMNAS do
      write(matrizCuadrada[i, j]:4); // Ajusta el ancho del campo para una mejor visualización
    writeln; // Salto de línea al final de cada fila
  end;
  
  writeln('suma: ', trazaMatriz(matrizCuadrada));
end.


