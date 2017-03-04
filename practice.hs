mult1 = x * y
    where x = 5;
          y = 6

{-Exercises pp. 90
let a = b in c <-> (\a -> c) b
c where a = b <-> (\a -> c) b
-}
addStuff = x * 3 + y
    where x = 3
          y = 1000

timesFive = x * 5 
    where y = 10
          x = 10 * 5 + y

divideMe = z/(x + y)
    where x = 7
          y = negate x
          z = y * 10

z = 7
x = y ^ 2
waxOn = x * 5
y = z + 8

triple x = x * 3
waxOff = triple x


--Exercises pp. 114-115 Ch 3.7 
myString :: IO() 
myString = do
    putStrLn "Enter any string:"
    str <- getLine
    putStrLn ("Concatenation: " ++ str ++ "!")
    putStrLn ("Returning one element: " ++ drop 4(take 5 str))
    putStrLn ("Dropping the first 9 chars: " ++ drop 9 str)

f :: String -> String
f x = drop 4(take 5 x)

thirdLetter :: String -> Char
thirdLetter x = (!!) x 2

letterIndex :: Int -> Char
letterIndex x = 'r'

rvrs :: String -> String
rvrs x = take 7(drop 9 x) ++ " " ++ (take 2(drop 6 x)) ++ " " ++ (take 5 x)

