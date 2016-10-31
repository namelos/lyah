module Chapter11.Section3 where
  
import Control.Applicative
  
myAction :: IO String
myAction = (++) <$> getLine <*> getLine