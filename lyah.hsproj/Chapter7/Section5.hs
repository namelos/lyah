module Chapter7.Section5 where
  
data Person = Person { firstName :: String
                     , lastName  :: String
                     , age       :: Int
                     } deriving (Eq, Show, Read)
                     
mikeD = Person { firstName = "Michael"
               , lastName  = "Diamond"
               , age       = 43 }
               
adRock = Person { firstName = "Adam"
                , lastName  = "Horovitz"
                , age       = 41 }
                
mca = Person { firstName = "Adam"
             , lastName  = "Yauch"
             , age       = 44 }            
             
beastieBoys = [mca, adRock, mikeD]

mysteryDude = "Person { firstName =\"Michael\"" ++
                     ", lastName  =\"Diamond\"" ++
                     ", age       = 43 }"
                     
data Boolean = False | True deriving (Eq, Ord)

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
           deriving (Eq, Ord, Show, Read, Bounded, Enum)