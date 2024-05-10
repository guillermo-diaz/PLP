{dados 2 vectores A y B ,de N  longitud se desea calcular el vector suma y el vector producto escalar}
PROGRAM Ejercicio19;
    CONST N=10;
    TYPE
     vector =ARRAY [1.. N ] of integer;
    var A,B,SUMA:vector;
    var i, producto:integer;

    PROCEDURE sumaVectores(A,B:vector; var SUMA:vector);
     var i:integer;
     begin

           for i:=1 to N do begin
               SUMA[i]:=A[i]+B[i];
           end;
     end;
     PROCEDURE prodVectores(A,B:vector; var producto:integer );
     var i:integer;
     begin
        producto:=0;
        for i:=1 to N do begin
         producto:=producto+ A[i]*B[i];
        end;
     end;

    begin
       for  i:=1 to N do begin
         A[i]:=i;
         B[i]:=i;
       end;
       for i:=1 to N do begin
         writeln(A[i],'SAPE');
       end;
       sumaVectores(A,B,SUMA);
       for i:=1 to N do begin
         writeln('SUMA: ',A[i],'+',B[i], ' = ', SUMA[i]);
       end;
       prodVectores(A,B,producto);
       writeln('PRODUCTO: ', producto );

    end.


