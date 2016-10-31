module Chapter12.Section1 where
  
data Profession = Fighter | Archer | Accountant

data Race = Human | Elf | Orc | Goblin

data PlayerCharacter = PlayerCharacter Race Profession

newtype CharList = CharList { getCharList :: [Char] } deriving (Eq, Show)

newtype Pair b a = Pair { getPair :: (a, b) }

instance Functor (Pair c) where
  fmap f (Pair (x, y)) = Pair (f x, y)
 