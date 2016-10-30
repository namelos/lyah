module Chapter2.Section2 (
  factorial,
  circumference
) where

factorial :: Integer -> Integer
factorial n = product [1 .. n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r