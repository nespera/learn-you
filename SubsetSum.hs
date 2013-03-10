module SubsetSum 
( sumFrom
) where

import Data.List

--sumFrom returns all unique subsets of a list of positive integers
--that sum to a given target sum value.
--If any of the integers are non-positive, it returns an
--empty list

sumFrom :: [Int] -> Int -> [[Int]]
sumFrom list target 
  | list == [] = []
  | any (<= 0) list = []
  | sum list < target = []
  | otherwise = sort $ fromSorted (sort list) target

fromSorted :: [Int] -> Int -> [[Int]]
fromSorted [] _ = []
fromSorted (x:xs) target  
  | x > target = []
  | x == target = [[x]]
  | otherwise = (fromSorted (dropWhile (== x) xs) target) ++ 
                (map (x:) (fromSorted xs (target-x))) 
