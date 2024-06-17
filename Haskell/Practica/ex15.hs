-- Defina una funcion
-- duplicar :: String -> Int -> String
-- la cual tome un String y un numero natural n. El resultado son n copias de un String
-- concatenado. (Si n=0 debe devolver un String vacio)

duplicar :: String -> Int -> String
duplicar cad n  
    | n == 0 = ""
    | n > 0 = cad ++ duplicar cad (n-1)
