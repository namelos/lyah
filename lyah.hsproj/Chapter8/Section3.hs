module Chapter8.Section3 where
  
import Data.Char

main :: IO ()
main = do
  putStrLn "Hello, what's your name?"
  name <- getLine
  putStrLn $ "Zis is your future: " ++ name

main' :: IO ()  
main' = do
  putStrLn "What's your first name?"
  firstName <- getLine
  putStrLn "What's your last name?"
  lastName <- getLine
  let bigFirstName = map toUpper firstName
      bigLastName = map toUpper firstName
  putStrLn $ "hey " ++ bigFirstName ++ " " ++ bigLastName ++ ", how are you?"
  
main'' = do
  line <- getLine
  if null line
    then return ()
    else do
      putStrLn $ reverseWords line
      main''
      
reverseWords :: String -> String
reverseWords = unwords . map reverse . words
