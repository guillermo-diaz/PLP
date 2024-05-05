hacerEspacios :: Int -> String
hacerEspacios n
    | n > 0     = " " ++ (hacerEspacios (n-1))
    | otherwise = ""