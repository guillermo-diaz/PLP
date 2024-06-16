

concat([ ], L, L).
concat([H|A], B, [H|C]):- concat(A, B, C).



% a) rotación a la izquierda. Ej. entra [1,2,3,4] y sale [2,3,4,1]
rotIzq([X | T], R) :- ultimo(X, T, R). %saco el primer elemento y llamo a ultimo
rotIzq([], []).
%pone el elemento al final de la lista
ultimo(X, [], [X | []]).
ultimo(X, [Y | T], [Y | H]) :- ultimo(X, T, H).

% c) eliminación de todas las ocurrencias de un elemento.
eliminar(X, [], []).
eliminar(X, [X | H], R) :- eliminar(X, H, R).
eliminar(X, [Y | H], [Y | R]) :- X \= Y, eliminar(X, H, R).

%d) sustitución de todas las ocurrencias de un elemento por otro
sustitucion(X, Y, [], []).
sustitucion(X, Y, [Z | H], [Z | R]) :- sustitucion(X, Y, H, R).
sustitucion(X, Y, [X | H], [Y | R]) :- sustitucion(X, Y, H, R).

%e) cardinalidad (cantidad de elementos no repetidos) Ej. entra [1,2,1,3,4] y sale 4.
card([], 0).
card([X | T], R) :- eliminar(X, T, G), card(G, R1), R is R1+1.


%f)
inversion([], []).
inversion([X | T], R) :- inversion(T, G), concat(G, [X], R).



%g)
% sufijo(L, L).  
sufijo(L, L) :- is_list(L). % para verificar que sean listas y no otra cosa

sufijo(L, [X | H]) :- sufijo(L, H).


%h) generar a partir de una lista el palíndrome correpondiente. Por ejemplo, a partir de abcd se genera el palíndromo abcddcba.
palindromo(L, P) :- inversion(L, R), concat(L, R, P).

%i) duplicar los elementos de una lista. Por ejemplo, el resultado de doblar [1,2,3] es [1,1,2,2,3,3].
duplicar([X | T], [X , X | R]) :- duplicar(T, R).
duplicar([], []).





