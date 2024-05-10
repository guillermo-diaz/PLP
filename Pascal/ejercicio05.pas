{escribir un algoritmo que determine si un numero es par,modificar codigo para verificar que N es divisible por M}
PROGRAM Ejercicio5;
    var n,m:integer;
    PROCEDURE esPar(VAR  num:integer );{un numero es par si el resto de ser dividido por 2 es 0}
    begin
     if(( num mod 2) =0) then  begin
        writeln('el numero ',num,' es par');
     end
     else begin
        writeln('el numero ',num,' es impar');
        end;
    end;
    PROCEDURE esDivisible(var divisor,dividendo:integer);{un numero es divisible por otro si el resto es 0}
    begin
      if ((dividendo mod divisor)=0 )then begin
         writeln('es divisible ');
      end
      else begin
         writeln('no es divisible ');
      end;
    end;
    BEGIN
      writeln('ingrese 2 numeros: ');
      readln(n);
      readln(m);
      esPar(n);
      esPar(m);
    END.
