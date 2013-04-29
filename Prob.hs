import Data.Ratio
import Data.List

newtype Prob a = Prob { getProb :: [(a, Rational)] } deriving Show

instance Functor Prob where
	fmap f (Prob xs) = Prob $ map (\(x,p) -> (f x,p)) xs

flatten :: Prob (Prob a) -> Prob a  
flatten (Prob xs) = Prob $ concat $ map multAll xs  
    where multAll (Prob innerxs,p) = map (\(x,r) -> (x,p*r)) innerxs

instance Monad Prob where  
    return x = Prob [(x,1%1)]  
    m >>= f = flatten (fmap f m)  
    fail _ = Prob []

coal :: (Eq a) => [(a, Rational)] -> [(a, Rational)]
coal [] = []
coal whole@((a,_):_) = (a,summed) : coal(nomatch)
    where (match, nomatch) = partition ((==a).fst) whole
          summed = sum (fmap snd match)

