entreLineas :: String -> String -> String -> String
entreLineas x y z = x ++" \n"++y++" \n"++z++"\n"

-- no usar print. no funcan los saltos de linea
main = putStr(entreLineas "hola1" "hola2" "hola3")
