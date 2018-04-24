module Currying where 

subtractStuff :: Integer -> Integer -> Integer 
subtractStuff x y = x - y - 10
{- In ghci, after loading the module, run
subtractStuff 50 25. You should get a result of 15
-}
subtractOne :: Integer -> Integer
subtractOne = subtractStuff 1 

bignum = (^) 5 $ 10