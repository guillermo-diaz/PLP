-- Definir en Haskell la funci´on alinear tal que, a partir de tres palabras y un total de caracteres para una linea, 
-- debe dar como salida las palabras de manera que una quede justificada a la izquierda, otra centrada y la tercera 
-- justificada a la derecha dentro de la misma l´ınea.
-- Por ejemplo:
-- > alinear "hola" "que" "tal" 60
-- "hola                     que                      tal"
alinear ::  String -> String -> String -> Int -> String
alinear cad1 cad2 cad3 n
    | sumaL > n = "Palabra > N"
    | even (n - sumaL) =  cad1 ++ agregarEspacios (n - sumaL) cad2 ++ cad3
    | otherwise = "no se puede centrar"
    where 
        sumaL = length cad1 + length cad2 + length cad3

        agregarEspacios :: Int -> String -> String 
        agregarEspacios x cad
            | x == 0 = cad
            | x > 0 = "_"++agregarEspacios (x-2) cad ++"_"

main = putStr(alinear "hola" "que" "tal" 30 ++ "\n")
