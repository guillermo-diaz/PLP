{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Ejercicio3;
   
   var radio: real;
   procedure calculos(r:real);
    CONST numPi=3.1415;
    var superficie,volumen:real;
      begin
        superficie:=4*r*r*numPi;
        volumen:=(4 / 3)*numPi*r*r*r;
        writeln('volumen :',volumen);
        writeln('superficie: ',superficie);
      end;
begin
  writeln('ingrese el radio de la esfera:');
  read(radio);
  calculos(radio);
end.

