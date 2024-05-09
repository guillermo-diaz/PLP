generar :: Int -> String
generar 0 = ""
generar a = dividir a
    where 
        dividir :: Int -> String
        dividir a 
            | a < 10 = imprimir a a
            | otherwise = dividir (a `div` 10) ++"\n"++ imprimir (a `mod` 10) (a `mod` 10)
        imprimir :: Int -> Int -> String 
        imprimir x cant
            | cant == 1 = show x
            | otherwise = show x ++""++imprimir x (cant - 1)

main = putStr("1534: \n"++generar 1534 ++ "\n")
