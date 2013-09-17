summ (a,0) (c,d) = error "Division by 0"
summ (a,b) (c,0) = error "Division by 0"
summ (a,b) (c,d) = (div (a * d + c * b) (gcd (a * d + c * b) (b * d)), div (b * d) (gcd (a * d + c * b) (b * d)))

sub (a,b) (c,d) = summ (a, b) ((-c), d)

mul (a,0) (c,d) = error "Division by 0"
mul (a,b) (c,0) = error "Division by 0"
mul (a,b) (c,d) = (div (a * c) (gcd (a * c) (b * d)), div (b * d) (gcd (a * c) (b * d)))

division (a,b) (c,d) = mul (a,b) (d,c)

sumPol [] ((c,d):xs) = ((c,d):xs)
sumPol ((a,b):xs) [] = ((a,b):xs)  
sumPol [] [] = []
sumPol ((a,b):xs) ((c,d):ys) = (summ (a,b) (c,d)):(sumPol(xs) (ys))

subPol [] ((c,d):xs) = ((-c,d):xs)
subPol ((a,b):xs) [] = ((a,b):xs)  
subPol [] [] = []
subPol ((a,b):xs) ((c,d):ys) = (sub (a,b) (c,d)):(subPol(xs) (ys))