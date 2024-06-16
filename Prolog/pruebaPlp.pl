% Curso: Principios de Lenguajes de Programaci�n
% Mi primer programa en Prolog
% Hechos de mi programa

perro(fido).
perro(inno).
gato(pazzo).
gato(fasulo).
animal(caballo).
animal(oveja).
animal(X):- perro(X).
animal(X):- gato(X).
