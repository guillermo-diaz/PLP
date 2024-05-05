justificarCentro :: Int -> String -> String
justificarCentro n st = esp ++ st ++ esp
    where
        esp = hacerEspacios n

hacerEspacios :: Int -> String
hacerEspacios n
    | n > 0     = " " ++ (hacerEspacios (n-1))
    | otherwise = ""