progenitor(juan, ana).
progenitor(maria, ana).
progenitor(pedro,pablo).
progenitor(maria,pablo).
progenitor(juan,luis).
progenitor(maria,luis).
progenitor(pedro,luciano).
progenitor(laura,luciano).
progenitor(laura,ariel).
progenitor(pedro,ariel).
progenitor(tomas,pedro).
progenitor(daniel,laura).
progenitor(andrea,laura).
progenitor(eugenia,maria).
progenitor(martin,maria).
progenitor(eugenia,rodolfo).
progenitor(martin,rodolfo).
progenitor(eugenia,sandra).
progenitor(martin,sandra).
progenitor(rodolfo,damian).
progenitor(claudia,damian).
progenitor(norma,andrea).
progenitor(carlos,andrea).
progenitor(norma,cecilia).
progenitor(carlos,cecilia).
progenitor(cecilia,gabriel).
progenitor(javier,gabriel).
progenitor(silvia,carlos).
progenitor(jorge,carlos).
progenitor(jose,juan).

femenino(ana).
femenino(maria).
femenino(laura).
femenino(eugenia).
femenino(andrea).
femenino(sandra).
femenino(claudia).
femenino(norma).
femenino(cecilia).
femenino(silvia).

masculino(juan).
masculino(pedro).
masculino(ariel).
masculino(luciano).
masculino(luis).
masculino(pablo).
masculino(tomas).
masculino(jose).
masculino(jorge).
masculino(javier).
masculino(gabriel).
masculino(carlos).
masculino(damian).
masculino(rodolfo).
masculino(martin).
masculino(daniel).

padre(X, Y) :-
    progenitor(X, Y),
    masculino(X).

madre(X, Y) :-
    progenitor(X, Y),
    femenino(X).

hermano(X, Y) :- 
    padre(H, X),
    padre(H, Y),
    madre(M, X),
    madre(M, Y),
    X \= Y.

abuelo(X, Y) :- 
    progenitor(X, H),
    progenitor(H, Y).

bisabuelo(X,Y) :- 
    abuelo(X, N),
    progenitor(N, Y).

tio(X,Y) :- 
    progenitor(P,Y),
    hermano(X,P).

primo(X,Y) :- 
    tio(T, X),
    progenitor(T, Y).

ancestro(X, Y) :- progenitor(X, Y). %caso base
ancestro(X, Y) :- progenitor(X, H), ancestro(H, Y). % recursion, recorre hijo por hijo hasta llegar a Y


% b) 

casado(juan, maria).
casado(eugenia, martin).
casado(daniel, andrea).
casado(cecilia,javier).
casado(pedro, laura).
casado(rodolfo, claudia).
casado(norma,carlos).

soltero(X) :- \+ (casado(X, _) ; casado(_, X)). %  ; es disyuncion y \+ es negacion


matrimonio(X, Y) :- casado(X, Y) ; casado(Y, X).

suegros(X,Y):-matrimonio(V,Y),progenitor(X,V).






