-- Dar una definicion para la funcion factorialTable ::Int -> Int -> String de forma que 
-- factorialTable m n tabule los valores de los factoriales desde m hasta n inclusive. Validar los datos de entrada.

factorialTable :: Int -> Int -> String 
factorialTable m n
    | m > n || n < 0 || m < 0 = "ERROR"
    | m == n = show (factorial m)
    | m < n = show(factorial m) ++"\n"++ factorialTable (m+1) n


factorial :: Int -> Int 
factorial 0 = 1
factorial n = n * factorial (n-1)

main = putStr(factorialTable 1 9 ++ "\n")

