
program Ejercicio6;
var x, y, opcion:integer;

function suma(e:integer; f:integer):integer;
       begin
         suma:=e+f;
       end;
function resta(e:integer; f:integer):integer;
       begin
         resta:=e-f;
       end;
function multiplicacion(e:integer; f:integer): integer;
       begin
         multiplicacion:=e*f;
       end;
function division(e:integer; y:integer): integer;
       begin
          division := e div y;
       end;

begin

     writeln ('ingrese 2 numeros:');
     read(x);
     read(y);
     
     while true do begin
         writeln('ingrese 1 opcion: ');
         read(opcion);
         
         case opcion of
            1: writeln('suma: ',suma(x,y));
            2: writeln('resta: ',resta(x,y));
            3: writeln('producto: ', multiplicacion(x,y));
            4: writeln('division: ',division(x,y));
         else
            writeln('error');
         end;
     end;

end.

