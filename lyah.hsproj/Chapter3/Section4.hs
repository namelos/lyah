module Chapter3.Section4 where

cyclinder :: Double -> Double -> Double
cyclinder r h   =
  let sideArea  = 2 * pi * r * h
      topArea   = pi * r ^ 2
  in  sideArea + 2 * topArea
  
calcRmis :: [(Double, Double)] -> [Double]
calcRmis xs = [ bmi | (w, h) <- xs, 
                let bmi = w / h ^ 2 ]
                
calcRmis' :: [(Double, Double)] -> [Double]
calcRmis' xs = [ bmi | (w, h) <- xs,
                let bmi = w / h ^ 2,
                bmi > 25.0 ]