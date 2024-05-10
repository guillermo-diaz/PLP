program hola;
var txt: string;
var tam: integer;
begin 
    txt := 'Hola putos';
    tam := length(txt);
    
    writeln('Posicion: ', pos('x', txt));
    
    writeln('substring: ',copy(txt, 6, tam));
    
    delete(txt,1, 5);
    writeln('string borrado: ', txt);
end.
