-- . Definir en Haskell una funci´on tal que, dado un n´umero entero, genere la siguiente salida
-- repitiendo la cantidad de d´ıgitos con una l´ınea para cada d´ıgito. Ejemplo : para el n´umero
-- 1534 , la salida debe ser como:
-- 1
-- 55555
-- 333
-- 4444

generar :: Int -> String 
generar a
    | a < 10 = imprimir a
    | otherwise = generar (a `div` 10) ++"\n" ++ imprimir (a `mod` 10)
        
imprimir :: Int -> String 
imprimir n = imprimirAux n
    where 
        imprimirAux :: Int -> String
        imprimirAux x 
            | x > 0 = show n ++ imprimirAux (x - 1)
            | otherwise = ""

main = putStr("- 1534: \n"++generar (1534) ++ "\n")


-- -- con nros negativos
-- generar2 :: Int -> String 
-- generar2 a = generar (abs a)
        
