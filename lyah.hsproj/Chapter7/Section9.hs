module Chapter7.Section9 where
  
class YesNo a where
  yesno :: a -> Bool
  
instance YesNo Int where
  yesno 0 = False
  yesno 1 = True
  
instance YesNo [a] where
  yesno [] = False
  yesno _ = True
  
instance YesNo Bool where
  yesno = id
  
instance YesNo (Maybe a) where
  yesno (Just _) = True
  yesno Nothing = False