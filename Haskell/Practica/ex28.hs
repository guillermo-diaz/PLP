esCuadradoPerfecto :: Int -> Bool
esCuadradoPerfecto x = round(sqrt(fromIntegral x))^2 == x

intervalo :: (Int, Int) -> String
intervalo (a, b) = intervaloAux (a, b)
    where
        intervaloAux :: (Int, Int) -> String
        intervaloAux (x, y)
            | x <= y && esCuadradoPerfecto x = show x ++", "++show (x-a+1) ++"\n"++ intervaloAux ((x+1), y)
            | x <= y && not (esCuadradoPerfecto x) = intervaloAux ((x+1), y)
            | otherwise = ""


main = putStr( intervalo (2, 18)++ "\n")