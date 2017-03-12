module SimplePatterns where



data Agency = GovOrg String -- name of org
            | NGO String Int String String -- name id contact title
            | Individual Contact Bool -- first name last name and are they a person
            deriving Show

data Contact = Person String String String -- first name, last name, title
            | Survivor String Bool -- status y/n
            | NonSurvivor String Bool -- status y/n
            | Unknown String Bool -- status y/n
            deriving Show

person :: Contact -> String
person per caller = case per of 
            Person fname lname title -> per
            Survivor status maybe -> status
            NonSurvivor status maybe -> status
            Unknown status maybe -> status


clientName :: Agency -> String
clientName client = case client of 
                    GovOrg name -> name
                    NGO name id person resp -> name
                    Individual fname lname -> 
                        for person in Person fName lName title -> fName ++ " " ++ lName ++ "" ++ status


