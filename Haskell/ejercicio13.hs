digitoRomano :: Char -> String
digitoRomano x = case x of
    '1' -> "I"
    '2' -> "II"
    '3' -> "III"
    '4' -> "IV"
    '5' -> "V"
    '6' -> "VI"
    '7' -> "VII"
    '8' -> "VIII"
    '9' -> "IX"
    _   -> "-"