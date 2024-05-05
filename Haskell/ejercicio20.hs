maxOcurr :: Int -> Int -> (Int,Int)
maxOcurr x y 
    | x < y = (y, 1)
    | x > y = (x, 1)
    | otherwise = (x, 2)

maxOcurrTres :: Int -> Int -> Int -> (Int,Int)
maxOcurrTres x y z 
    | x > y && x > z = (x, 1)
    | y > x && y > z = (y, 1)
    | z > y && z > x = (z, 1)

    | x == y && y == z = (x, 3)
    
    | x == y && x > z = (x, 2)
    | z == x && z > y = (z, 2)
    | z == y && z > x = (z, 2) 

