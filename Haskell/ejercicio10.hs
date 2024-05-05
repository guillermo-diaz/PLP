cuartaPotencia :: Int -> Int
cuartaPotencia x = x*x*x*x

-- Dar otra definicion que use alCuadrado
cuartaPotencia2 :: Int -> Int
cuartaPotencia2 x = alCuadrado (alCuadrado x)
    where
        alCuadrado :: Int -> Int
        alCuadrado x = x*x