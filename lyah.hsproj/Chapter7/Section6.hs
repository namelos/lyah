module Chapter7.Section6 where
import Data.Map
import Prelude hiding (Either, Left, Right, lookup)

type String' = [Char]

type PhoneNumber = String
type Name = String
type PhoneBook = [(Name, PhoneNumber)]

inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name pnumber pbook = (name, pnumber) `elem` pbook

type AssocList k v = [(k, v)]

type IntMap v = Map Int v
type IntMap' = Map Int

data Either a b = Left a | Right b deriving (Eq, Ord, Read, Show)

data LockerState = Taken | Free deriving (Show, Eq)

type Code = String

type LockerMap = Map Int (LockerState, Code)

lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup lockerNumber map = case lookup lockerNumber map of
    Nothing            -> Left $ "Locker" ++ show lockerNumber ++ " doesn't exist!"
    Just (state, code) -> if state /= Taken
                          then Right code
                          else Left $ "Locker " ++ show lockerNumber ++ " is already taken!"
                          
lockers :: LockerMap
lockers = fromList [(100, (Taken,"ZD39I"))
                   ,(101, (Free, "JAH3I"))
                   ,(103, (Free, "IQSA9"))
                   ,(105, (Free, "QOTSA"))
                   ,(109, (Taken,"893JJ"))
                   ,(110, (Taken,"99292"))]