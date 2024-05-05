-- funny x y z 1
-- | x > z = True 2
-- | x >= y = False 3
-- | otherwise = True 

funny :: Int -> Int -> Int -> Bool
funny x y z = x < y 

