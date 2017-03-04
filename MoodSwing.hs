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