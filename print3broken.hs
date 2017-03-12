module Print3broken where

printSecond :: IO()
printSecond = putStrLn greeting

greeting :: String
greeting = "Yarrr"

main :: IO()
main = do 
    putStrLn greeting
    printSecond
    where greeting = "Yarrr"