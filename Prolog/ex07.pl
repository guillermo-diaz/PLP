
% a) concatenacion
% Caso base: adjuntar una lista vacía a una lista L.
concat([ ], L, L).
% Paso recursivo: adjuntar la cabeza de la primer lista a la cabeza
% de la lista resultante concatenado con el resultado de adjuntar la cola
% de la primer lista con la segunda lista.
concat([H|A], B, [H|C]):- concat(A, B, C).

%b) pertenencia de un elemento
pertenece(X, [X | T]).
pertenece(X, [H | T]) :- pertenece(X, T).

% c)cantidad de ocurrencias de un elemento.
cantOcur(X, [], 0).
cantOcur(X, [X | T], R) :- cantOcur(X, T, Z), R is Z+1.
cantOcur(X, [H | T], R) :- cantOcur(X, T, R).

%  d) eliminación de la primera ocurrencia de un elemento
eliminar(X, [], []).
eliminar(X, [X | T], T).
eliminar(X, [Y | T], [Y | R]) :- X \= Y, eliminar(X, T, R).  %el disinto para que no siga unificando, una vez ya encontrado el elemento

% e) sustitución de la primera ocurrencia de un elemento por otro. 
sustitucionPrim(X, E, [], []).
sustitucionPrim(X, E, [X | T], [E | T]).
sustitucionPrim(X, E, [Y | T], [Y | R]) :- sustitucionPrim(X, E, T, R). 

% f) longitud. Por ejemplo entra [1,2,1,3,4] y sale 5.
longitud([], 0).
longitud([X | T], R) :- longitud(T, Z), R is Z+1.

% g) prefijo
prefijo([], R).
prefijo([X | T], [X | H]) :- prefijo(T, H). 
