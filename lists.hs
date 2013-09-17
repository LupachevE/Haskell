conc [] = []
conc (x:xs) = x ++ conc(xs)

mul x [] = []
mul x (y:ys) = (x * y):(mul x ys)
dekMul [] (y:ys) = []
dekMul (x:xs) (y:ys) = (mul x (y:ys))++(dekMul (xs) (y:ys))