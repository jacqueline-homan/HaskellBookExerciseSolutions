module CorrectedSyntax where

x :: Int -> Int -> Int
x = (+)

f :: Foldable t => t a -> Int
f xs = w `x` 1
    where w = length xs

{- Here's how to correctly write the identity function
x :: [a] -> [a]
x = \x -> x 
or just
x = (\x -> x)

In GHCi, you'd just enter (\x -> x) <value_assigned_to_x>
-}

(t : ts) = [1,2,3]

g :: (a, b) -> a
g (a, b) = a

type Name = String

data Pet = Cat Name | Dog Name

awesome = ["Papuchon", "curry", ":)"]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = undefined