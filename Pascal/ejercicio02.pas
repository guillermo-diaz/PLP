{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Ejercicio2;
    var s,r,x,y:integer;{variable}
    function suma(e:integer; f:integer):integer;
       begin
         suma:=e+f;
       end;
    function resta(e:integer; f:integer):integer;
       begin
         resta:=e-f;
       end;
    procedure multiplicacion(e:integer; f:integer);
       var mult:integer;
       begin
         mult:=e*f;
         writeln('multiplicacion de ',e,'x',f,' : ',mult);
       end;
    procedure division(e:integer; y:integer);
       var divi:integer;
       begin
          divi:=e div y;
          writeln('division de ',e,'/',y,' : ',divi);
       end;
    begin
     writeln ('ingrese 2 numeros:');
     read(x);
     read(y);
     {a}
     s:=suma(x,y);
     r:=resta(x,y);
     {b}
     multiplicacion(x,y);
     division(x,y);
     writeln('numero 1: ',x,' numero 2: ',y);
     writeln('suma:',s,'| resta: ',r);{a}
  
    end.

