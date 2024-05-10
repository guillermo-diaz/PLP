{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}
{kkk
 A partir de una funcion denominada expo, con los parametros x y n devuelva el valor de x
elevado a la n, donde x es un numero real y n entero.  
}


PROGRAM Ejercicio11;
VAR n:integer; x:double;
function expo (n:integer;x:double):double;
var i:integer;elevado:double;
begin
  i:=0;
  elevado:=1;
  while i < n do begin
      elevado:=elevado*x;
      i:=i+1;
  end;
  expo:= elevado;
end;
begin
  
  writeln ('ingresa 2 numeros: ');
  read(x);
  read(n);
  writeln('el valo',x,'elevado a ',n,' es de ',expo(n,x));
end.

