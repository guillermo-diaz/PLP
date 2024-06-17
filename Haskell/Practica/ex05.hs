calculo :: Int -> Int -> Float
calculo x n = sumatoria n / fromIntegral(factorial x)
  where
    sumatoria :: Int -> Float
    sumatoria m
        | m == 0    = 0
        | otherwise = fromIntegral (m ^ n) + sumatoria (m - 1)

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)