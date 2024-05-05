nAnd :: Bool -> Bool -> Bool
nAnd a b = not (a && b)

main = print(show(nAnd False False))