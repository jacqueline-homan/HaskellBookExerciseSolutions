module Fibonacci where 

fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n - 1) + fibonacci(n - 2)

{- 
fibonnaci2 :: Integral a => a -> a
fibonacci2 0 = 0
fibonacci2 1 = 1
fibonacci2 n = fibonacci2(n - 1) + fibonacci2(n - 2)
-}