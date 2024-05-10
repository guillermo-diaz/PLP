program Ejercicio13;
procedure tablaEquivalencia();
   var celcius,farenheint: real;
 
   begin
       celcius:=0;
       farenheint:=0;
        while(farenheint <=200)do begin
              celcius := (5 / 9)*(farenheint-32);
              writeln('Fahrenheit: ', farenheint:5:2, '  Celsius: ', celcius:5:2);
              farenheint:=farenheint + 10;

        end;
 
   end;
begin
  tablaEquivalencia();
end.
