module Types where

addStuff :: Integer -> Integer -> Integer
addStuff a b = a + b + 5

addTen = addStuff 5
fifteen = addTen 5

funcIgnoresArgs :: a -> a -> a -> String
funcIgnoresArgs x y z = "Blah"

nonsense :: Bool -> Integer
nonsense True = 805
nonsense False = 31337

typicalCurriedFunction :: Integer -> Bool -> Integer
typicalCurriedFunction i b = 
    i + (nonsense b)

uncurriedFunction :: (Integer, Bool) -> Integer
uncurriedFunction (i, b) = 
    i + (nonsense b)

anonymous :: Integer -> Bool -> Integer
anonymous = \i b -> i + (nonsense b)

anonymousAndManuallyNested :: Integer -> Bool -> Integer
anonymousAndManuallyNested = \i -> \b -> i + (nonsense b)

{-
id :: Int -> Int
id a = a

inc :: Int -> Int
inc = (+ 1)

id :: a -> a; id = undefined
inc = (+1)




fromIntegral :: (Integral a, Num b) => a -> b; fromIntegral = undefined
-}

f :: Num a => a -> a -> a 
f x y = x + y + 3