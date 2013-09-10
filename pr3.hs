gcd1 x y = if y == 0 then x else gcd1 y (mod x y)

isCoPrime x y = gcd1 x y == 1