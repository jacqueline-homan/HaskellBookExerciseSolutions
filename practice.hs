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