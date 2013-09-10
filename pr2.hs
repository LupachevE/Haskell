gcd1 x y = if y == 0 then gcd1 y (mod x y) else x

lcm1 x y = div (abs(x * y)) (gcd1 x y)