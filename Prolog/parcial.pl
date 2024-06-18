%ejercicios parcial
% generar(2, 5, L)   ->   L = [[2, 4], [3, 6], [4, 8], [5, 10]]
generar(A, B, [[A, D]]) :- A = B,  doble(A, D). %caso base
generar(A, B, [[A, D]| R]) :- A < B, doble(A, D), A1 is A+1, generar(A1, B, R).
doble(X, R) :- R is 2*X.

 % elemento(K, L, R) donde R es la suma de los  primeros K elementos 
 % elemento(5, [2, 7, 4, 8, 9, 1, 5], R). -> R = 30

elemento(K, L, R) :- K >= 0 , sumar(K, L, 0, R).
sumar(0, L, Acum, Acum). % caso base es 0
sumar(K, [H | T], Acum, R) :- K2 is K - 1, Acum2 is Acum + H, sumar(K2, T, Acum2, R).  
sumar(K, [U | []], Acum, R) :- K > 0,  R is Acum + U. %caso especial: K > LONG(L)




% flatten(L1, L2) -> L1 = [[[1], [2], 3, [[4], 5]]] -> L2 = [1, 2, 3, 4, 5]
% flatten([[[1], [2], 3, [[4], 5]]], R). 

flatten([], []).
flatten([X | T], R) :- 
    lista(X),
    flatten(X, L1), % X es lista, la desarmo primero antes de ir al paso recursivo 
    flatten(T, L2), %paso recursivo
    concat(L1, L2, R). 
flatten([X | T], [X | R]) :- \+ lista(X), flatten(T, R).

%verifica si es una lista
lista([]).
lista([H | T]). %si unifica con esto es una lista

concat([ ], L, L).
concat([H|A], B, [H|C]):- concat(A, B, C).

%elemento2(5, [2, 7, 4, 8, 9, 1, 5], R).

elemento2(0, L, 0).
elemento2(K, [H | T], R) :- K > 0, K2 is K - 1, elemento2(K2, T, R2), R is R2 + H.
elemento2(K, [H], H) :- K > 0. %caso especial donde K > LONG(L)


% cuantoN([1, 2, 1, 5, 1, 3, 3, 7], R). -> R = [[1, 3], [2, 1], [5, 1], [3, 2], [7,1]]

cuantoN([], []).
cuantoN([H | T], [[H, Cant] | R]) :- cantOcur(H, [H | T], Cant, R1), cuantoN(R1, R). 

% cuenta las ocurrencias de un H mientras hace una lista sin este elemento
cantOcur(H, [], 0, []).  % caso base: 1 ocurrencia en la lista
cantOcur(H, [H | T], Cant, R) :- cantOcur(H, T, Cant2, R), Cant is Cant2 + 1.  % ocurrencia, no lo agrego a la lista
cantOcur(H, [Y | T], Cant, [Y | R]) :- H \= Y, cantOcur(H, T, Cant, R). 
