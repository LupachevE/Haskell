fib n = 
  fib' n (0, 1) where 
    fib' n (fib1, fib2) = if n > 0 then fib' (n - 1) (fib2, fib1 + fib2) else fib1 