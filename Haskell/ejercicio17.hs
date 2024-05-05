factorial :: Int -> Int
factorial 1 = 1
factorial n
    | n > 0 = n * factorial(n-1)
    | otherwise = -1

factorialTable :: Int -> Int -> String 
factorialTable m n
    | m <= n  =  show(factorial m)++" - "++ (factorialTable (m+1) n)
    | otherwise = ""