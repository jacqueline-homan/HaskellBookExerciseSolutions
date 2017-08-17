module PatternMatching where

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Bob"
charName 'c' = "Charlie"
charName _ = "You failed to match on a, b or c"

xs :: (Num t1, Num t) => [(t, t1)]
xs = [(1,2), (3,4), (5,6), (7,8)]
xt = [a+b | (a, b) <- xs]
xr = [(a-b) | (a,b) <- xs]

fizzBuzz :: Int -> String
fizzBuzz n | n `mod` 15 == 0 = "FizzBuzz"
        | n `mod` 5 == 0 = "Buzz"
        | n `mod` 3 == 0 = "Fizz"
        | otherwise = show n

main :: IO()
main = mapM_ putStrLn $ map fizzBuzz [1..100]

contrivedMap :: ([a] -> a -> b) -> [a] -> [b]
contrivedMap f [] = []
contrivedMap f list@(x:xs) = f list x : contrivedMap f xs


y =
    let
        (x:_) = map (*2) [1,2,3]
    in x + 5
    
w = x + 5
    where
    (x:_) = map (*2) [1,2,3]
{-
data Maybe a = Nothing | Just a

catMaybes :: [Maybe a] -> [a]
catMaybes ms = [ x | Just x <- ms ]
-}
putFirstChar = do
putStrLn "Enter any string:"
(c:_) <- getLine
putStrLn [c]

{- 
class Functor f where
fmap :: (a -> b) -> f a -> f b
-}