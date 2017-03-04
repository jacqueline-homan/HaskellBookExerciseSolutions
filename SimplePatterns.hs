module SimplePatterns where

data Client = GovOrg String -- name of org
            | Company String Integer String String -- name id contact title
            | Individual Person Bool -- first name last name and are they a person
            deriving Show

data Person = Person String String String -- first name, last name, title
            | Male String Bool -- gender y/n
            | Female String Bool -- gender y/n
            | Unknown String Bool -- gender y/n
            deriving Show

clientName :: Client -> String
clientName client = case client of 
                    GovOrg name -> name
                    Company name id person resp -> name
                    Individual fname lname -> 
                        case person of Person fName lName gender -> fName ++ " " ++ lName ++ "" ++ gender