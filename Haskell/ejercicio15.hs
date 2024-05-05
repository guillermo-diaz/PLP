duplicar :: String -> Int -> String 
duplicar cad n 
    | n > 0 = cad ++ duplicar cad (n-1)
    | otherwise = ""