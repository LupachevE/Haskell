gcd1 x y = if y == 0 then x else gcd1 y (mod x y)
isCoPrime x y = if gcd1 x y == 1 then 1 else 0
countPrime x =
  newf 1 where
    newf i =
      if (i < x) 
	    then (isCoPrime x i) + newf (i + 1)
        else 0