
tParcial :: (Int, Int) -> Int -> String
tParcial (n, m) c 
    | n  > m || c <= 0 = "ERROR"
    | n == m = show n ++"\t\t"++show (sumatoria n c) 
    | otherwise =  show n ++"\t\t"++show (sumatoria n c)++"\n"++tParcial (n+1, m) c

sumatoria :: Int -> Int -> Float
sumatoria k c
    | k == 1 = resultado
    | otherwise= resultado + sumatoria (k-1) c
    where 
        resultado = fromIntegral(k^3 + 5*c) / fromIntegral((k*2)+c-1)

main = putStr( tParcial (2, 4) 3++ "\n")

