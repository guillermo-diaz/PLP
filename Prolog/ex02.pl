on(b, a).
on(c, b).
on(d, c).
on(e, d).
on(f, e).
on(g, f).
on(h, g).
%caso base
encima(X,Y):-on(X,Y).
%caso recursivo
encima(X,Y):-on(X,Z),encima(Z,Y).
