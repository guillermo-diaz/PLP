allEqual :: Int -> Int -> Int -> Bool 
allEqual n m p = (n == m) && (m == p)

losCuatroIguales :: Int -> Int -> Int -> Int -> Bool
losCuatroIguales w x y z = allEqual w x y && w == z

main = print (losCuatroIguales 2 1 1 1)