% En el caso base verifico si el elemento buscado es equivalente
% al primer elemento de la lista.
miembro(X,[X|T]).
% Luego se continua buscando en los otros elementos.
miembro(X,[H|T]) :- miembro(X,T).

% Caso base: adjuntar una lista vacía a una lista L.
adjuntar([ ], L, L).
% Paso recursivo: adjuntar la cabeza de la primer lista a la cabeza
% de la lista resultante concatenado con el resultado de adjuntar la cola
% de la primer lista con la segunda lista.
adjuntar([H|L1], L2, [H|L3]):- adjuntar(L1, L2, L3).