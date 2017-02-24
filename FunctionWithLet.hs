module FunctionWithLet where

    printInc2 n = let plusTwo = n + 2
                  in print plusTwo

    printInc2' n = (\plusTwo -> print plusTwo) (n + 2)

    mult1 = x * y
        where x = 5;
              y = 6

