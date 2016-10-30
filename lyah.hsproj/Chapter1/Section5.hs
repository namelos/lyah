module Chapter1.Section5 (
  boomBangs
) where
  
boomBangs xs = [ if x < 10
                   then "BOOM!"
                   else "BANG!"
                 | x <- xs, odd x]
                 
nouns = ["hobo", "frog", "pope"]

adjectives = ["lazy", "grouchy", "scheming"]

length' xs = sum [1 | _ <- xs]

removeNonUppercase st = [c | c <- st, c `elem` ['A' .. 'Z']]

xxs = [[1, 3, 5, 2, 3, 1, 2, 4, 5],
       [1, 2, 3, 4, 5, 6, 7, 8, 9],
       [1, 2, 4, 2, 1, 6, 3, 1, 3, 2, 3, 6]] 