fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n 
    | n > 1 = fibonacci (n-2) + fibonacci (n-1)
    | otherwise = -1


factorial :: Int -> Int
factorial 1 = 1
factorial n
    | n > 0 = n * factorial(n-1)
    | otherwise = -1

funcion :: Int -> Int -> Double 
funcion x n = fromIntegral(sum n n) / fromIntegral(factorial x)
   where
        sum :: Int -> Int -> Int
        sum n 1 = 1
        sum n i = (i^n) + (sum n (i-1))

main = print(" F(3, 4) = "++ show(funcion 3 4))

