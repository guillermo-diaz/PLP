program VerificarPrimo;

function EsPrimo(n: Integer): Boolean; 
    var esDivisible: Boolean;
    var i: integer;
    begin
    esDivisible := true;
    i := 2;
    
    while (esDivisible) and (i < n) do begin
        if (n mod i) = 0 then begin
            esDivisible := false;
        end;
        i := i + 1;
    
    end;
    
    EsPrimo := esDivisible;
end;

function NextPrimo(n: Integer): Integer; 
    begin
    n := n+1;
    while (not EsPrimo(n)) do begin
        n := n +1 ;
    end;
    
    NextPrimo := n;
   
end;

procedure Descomponer(n: Integer);
    var primo: integer;
    begin
    primo := 2;
    
    while (n <> 1) do begin
        if ((n mod primo) = 0) then begin
            n := n div primo;
            
            write(primo,' *');
        end 
        else begin
            primo := NextPrimo(primo);
        end;
    end;
   
end;



var
  numero: Integer;
begin
  Write('Ingrese un número: ');
  ReadLn(numero);
  Descomponer(numero);
end.


