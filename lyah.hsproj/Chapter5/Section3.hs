module Chapter5.Section3 where
  
map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
  | p x       = x : filter p xs
  | otherwise = filter p xs

largestDivisible :: Integer
largestDivisible = head (filter p [100000, 99999..])
  where p x = x `mod` 3829 == 0
  
largestDivisible' :: Integer
largestDivisible' = head [ x | x <- [100000, 99999..], x `mod` 3829 == 0 ]

chain :: Integer -> [Integer]
chain 1 = [1]
chain n
  | even n = n:chain (n `div` 2)
  | odd n  = n:chain (n*3 + 1)
  
numLongChains :: Int
numLongChains = length (filter isLong (map chain [1..100]))
  where isLong xs = length xs > 15
  
listOfFuns :: [Int -> Int]
listOfFuns = map (*) [0..]