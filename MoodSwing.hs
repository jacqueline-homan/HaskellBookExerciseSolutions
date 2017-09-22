module MoodSwing where

data Mood = Blah  
        | Woot
        deriving Show


changeMood :: Mood -> String
changeMood Blah = "Woot"
changeMood Woot = "Blah"

{-
changeMood _ = Blah | Woot
    where "blah" = Woot
          "woot" = Blah
-}

data Jsays = Cool 
            | NotCool
            deriving Show

j :: Jsays -> String
j Cool = "Cool"
j NotCool = "Nope!"