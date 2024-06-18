


concat([ ], L, L).
concat([H|A], B, [H|C]):- concat(A, B, C).

% ordenar([4,1, 9, 5], R).
ordenar(L, R) :- ordAux(L, [], R).
ordAux([], L, L).
ordAux([H| T], L, R) :- empujar(H, L, R1), ordAux(T, R1, R).

empujar(H, [], [H]).
empujar(H, [K | T], [H, K | T]) :- H < K. %dejo de empujar, esta en su lugar
empujar(H, [K | T], [K | R]) :- H >= K, empujar(H, T, R). %es mayor, lo sigo empujando
