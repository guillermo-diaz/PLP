suma(0,Y,Y).
suma(succ(X),Y,succ(R)):- suma(X,Y,R).

% resta v1 usando suma
resta1(X, Y, Z) :- suma(Y, Z, X).

%vresta v2
resta(X,0,X).
resta(succ(X),succ(Y),Z) :- resta(X,Y,Z).

multiplicacion(_,0,0).
multiplicacion(X,succ(Y), Z) :- multiplicacion(X,Y,M), suma(M,X,Z).

div(0, _, 0).
div(X, Y, succ(R)) :- resta(X,Y,A), div(A, Y, R).

mayor_igual(0,0).
mayor_igual(succ(X),0).
mayor_igual(succ(X),succ(Y)):- mayor_igual(X,Y).

