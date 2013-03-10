module SubsetSum 
( sumFrom
) where

sumFrom :: [Int] -> Int -> [[Int]]
sumFrom list target 
  | list == [] = []
  | sum list < target = []
  | any (<= 0) list = []
