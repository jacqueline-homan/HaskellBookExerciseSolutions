sayHello :: String -> IO()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

triple x = x * 3

square x = x * x

piMult x = square x * 3.14
-- You could also write it as piMult x = 3.14 * (x ^ 2)

