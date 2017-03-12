module Datatypes where
{-
x :: Integer
x = 6


awesome :: [[Char]]
alsoAwesome :: [[Char]]
allAwesome :: [[[Char]]]
-}

awesome :: [String]
alsoAwesome :: [String]
allAwesome :: [[String]]

awesome = ["Papuchon", "curry", ":)"]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]


isPalindrome :: (Eq a) => [a] -> Bool 
isPalindrome y = y == reverse y


myAbs :: Integer -> Integer
myAbs x = if x < 0 then negate x else x 
