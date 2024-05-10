program NumerosPrimos;

const
  TAMANO_MAXIMO = 199;

function EsPrimo(n: Integer): Boolean;
var
  esDivisible: Boolean;
  i: Integer;
begin
  esDivisible := True;
  i := 2;
  
  while (esDivisible) and (i < n) do
  begin
    if (n mod i) = 0 then
    begin
      esDivisible := False;
    end;
    i := i + 1;
  end;
  
  EsPrimo := esDivisible;
end;

procedure NumerosPrimosEntre2y200(var primos: array of Integer; var cantidad: Integer);
var
  numero: Integer;
begin
  cantidad := 0;
  
  // Iteramos sobre los números del 2 al 200
  for numero := 2 to TAMANO_MAXIMO do
  begin
    // Si el número es primo, lo agregamos al vector de primos
    if EsPrimo(numero) then
    begin
      primos[cantidad] := numero;
      cantidad := cantidad + 1;
    end;
  end;
end;

var
  primosEncontrados: array[0..TAMANO_MAXIMO] of Integer;
  cantidadPrimos, i: Integer;
begin
  NumerosPrimosEntre2y200(primosEncontrados, cantidadPrimos);
  writeln('tam, ', Length(primosEncontrados));
  writeln('Los numeros primos entre 2 y 200 son:');
  for i := 0 to cantidadPrimos - 1 do
    writeln(primosEncontrados[i]);
end.

