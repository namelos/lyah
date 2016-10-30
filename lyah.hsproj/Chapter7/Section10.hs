module Chapter7.Section10 where
  
import Prelude hiding (Functor, Either, Left, Right)

class Functor f where
  fmap :: (a -> b) -> f a -> f b
  
instance Functor [] where
  fmap = map
  
instance Functor Maybe where
  fmap f (Just x) = Just (f x)
  fmap f Nothing = Nothing
  
data Either a b = Left a | Right b

instance Functor (Either a) where
  fmap f (Right x) = Right (f x)
  fmap f (Left x) = Left x