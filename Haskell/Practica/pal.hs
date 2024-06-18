pali :: Int -> Bool
pali x = x == inve x

inve :: Int -> Int 
inve m
    | m < 10 = m
    | m >= 10  = (m `mod`10)*10^((digitos m)-1) + inve (m `div`10)

digitos :: Int -> Int
digitos 0 = 0
digitos n = 1 + digitos(n `div` 10)