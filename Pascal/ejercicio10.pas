{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


PROGRAM Ejercicio10;
VAR a,b,c:integer;
function sumaSucesiva (a:integer;b:integer):integer;
var i,suma:integer;
begin
  i:=0;
  suma:=0;
  while i < b do begin
      suma:=suma+a;
      i:=i+1;
  end;
  sumaSucesiva:=suma;
end;
begin
  
  writeln ('ingresa 2 numeros: ');
  read(a);
  read(b);
  writeln('el producto de ',a,'*',b,' es:',sumaSucesiva(a,b));
end.

