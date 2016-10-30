module Chapter2.Section1 (
  removeNonUpperCase,
  addThree
) where
  
removeNonUpperCase :: [Char] -> [Char]
removeNonUpperCase st = 
  [ c | c <- st, c `elem` ['A'..'Z'] ]
  
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z