module Chapter5.Section1 where
  
multThree :: Int -> Int -> Int -> Int
multThree x y z = x * y * z

multTwoWithNine :: Int -> Int -> Int
multTwoWithNine = multThree 9

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

isUpperAlphanum :: Char -> Bool
--isUpperAlphanum = (`elem` ['A' .. 'Z'])
isUpperAlphanum = flip elem ['A' .. 'Z']