
%a) 
%lista vacia siempre incluida en L
incluido([], L).
incluido([X | T], L) :- pertenece(X, L), incluido(T, L).
pertenece(X, [X | T]). 
pertenece(X, [Y | T]) :- pertenece(X, T).

%b) 
igualdad(L1, L2) :- incluido(L1, L2), incluido(L2, L1).

%c) Union
no_pertenece(X, []).
no_pertenece(X, [H | T]) :- X \= H, no_pertenece(X, T).

union([], L, L). %vacio u L = L
union([X | T], L, [X | R]) :- no_pertenece(X, L), union(T, L, R).  % si pertenece lo agrego adelante de R(al final R va a valer L)
union([X | T], L, R) :- pertenece(X, L), union(T, L, R). %si pertenece lo salteo y sigo recorriendo sin agregar X

%d) Interseccion
inter([], L, []). % vacio n L = vacio
inter([X | L1] , L2, [X | R]) :- pertenece(X, L2), inter(L1, L2, R).
inter([X | L1], L2, R) :- no_pertenece(X, L2), inter(L1, L2, R). 

%e) Diferencia 
diferencia([], L, []). % VACIO - CONJUNTO = VACIO
diferencia([X | T], B, [X | R]) :- no_pertenece(X, B), diferencia(T, B, R). 
diferencia([X | T], B, R) :- pertenece(X, B), diferencia(T, B, R). 


