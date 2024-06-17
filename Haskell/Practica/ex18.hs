-- justificarCentro :: Int -> String -> String
-- de forma que justificarCentro n st nos devuelva un String de longitud n en el cual se
-- le han agregado espacios en ambos extremos de st de modo que quede centrado. Validar
-- todos los casos.
-- Dar una solucion utilizando la clausula where y otra sin ella.

justificarCentro :: Int -> String -> String
justificarCentro n cad
    | length cad > n = "Palabra > N"
    | even (n - length cad) =  agregarEspacios (n - length cad) cad
    | otherwise = "no se puede centrar"
    where 

        agregarEspacios :: Int -> String -> String
        agregarEspacios x cad 
            | x == 0 = cad
            | x > 0 = "_"++agregarEspacios (x-2) cad ++"_"

main = putStr(justificarCentro 10 "hola" ++ "\n")
