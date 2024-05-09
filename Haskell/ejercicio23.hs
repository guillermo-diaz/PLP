menMayor:: (Int,Int) -> (Int,Int)  -> (Int,Int) -> (Int,Int)
menMayor (x,y)  (z,w)  (u,o)= (obtenerMenor [x,y,z,w,u,o], obtenerMayor([x,y,z,w,u,o]))
  where
    --Obtiene el mayor elemento en una lista
    obtenerMayor:: [Int] ->Int
    obtenerMayor [] = error "La lista está vacía."
    obtenerMayor [x] = x --si tiene un solo elemento lo rtorno
    obtenerMayor (x:xs) --x es el primer elemento de la lista y xs el resto
        | x > obtenerMayor xs = x  --si x es mayor lo retorno
        | otherwise = obtenerMayor xs

    --obtiene el menor elemento en una lista
    obtenerMenor:: [Int] -> Int
    obtenerMenor [] = error "La lista está vacía."
    obtenerMenor [x] = x
    obtenerMenor (x:xs)
        | x < obtenerMenor xs = x  
        | otherwise = obtenerMenor xs