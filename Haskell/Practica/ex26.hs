-- 26. Definir en Haskell una funci´on tal que, dado un intervalo de a˜nos representado por n m
-- pueda mostrar en una tabla los a˜nos y la leyenda “es bisiesto” o “no bisiesto”. Un a˜no
-- es bisiesto si es m´ultiplo de 4 (por ej. 1984), pero si el a˜no es m´ultiplo de 100 s´olo son
-- bisiestos cuando a su vez son m´ultiplos de 400. Por ej 1800 no es bisiesto, mientras que
-- 2000 si. Ej: para el intervalo 2000 2004 la tabla ser´ıa:
-- 2000 bisiesto
-- 2001 no bisiesto
-- 2002 no bisiesto
-- 2003 no bisiesto
-- 2004 bisiesto

bisiesto :: Int -> Bool 
bisiesto n = ((n `mod` 4 == 0 && n `mod` 100 /= 0) || (n `mod` 400 == 0))

tabla :: Int -> Int -> String 
tabla a b 
    | a < b = imprimir a ++"\n"++ tabla (a+1) b 
    | a == b = imprimir a
    | otherwise = "ERROR" 

imprimir :: Int -> String 
imprimir n 
    | bisiesto n = show n ++ " bisiesto"
    | otherwise = show n ++ " no bisiesto"

main = putStr(tabla 2000 2008++ "\n")
