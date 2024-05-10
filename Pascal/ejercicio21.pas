
program Hello;
var txt: string;

procedure esCapicua(txt: string); 
var i, j, limite: integer;
var flag: boolean;
begin 
    {   1 2 3 4 5 6 7
        n e u q u e n}
    flag := true;
    i := 1;
    j := length(txt);
    
    while (flag) and (i < j) do begin
        if (txt[i] <> txt[j]) then begin 
            flag := false;
        end;
        i := i + 1;
        j := j - 1;
    end;
    
    if flag then begin
        writeln('Es capicua');
    end else begin
        writeln('No es capicua')
    end;
end;
begin
  writeln('ingrese pal');
  read(txt);
  esCapicua(txt);
end.

