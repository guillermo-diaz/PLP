allDiferent :: Int -> Int -> Int -> Bool
allDiferent x y z = (x /= y) && (y /= z) && (x /= z) 
--9) esta mal, no considera el caso de que 1 2 1, donde 1 != 2, 2 != 1, pero 1 = 1

main = print(show(allDiferent 1 2 3))