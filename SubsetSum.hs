module SubsetSum 
( sumFrom
) where

sumFrom :: [Int] -> Int -> [[Int]]
sumFrom list target 
  | list == [] = []
  | any (<= 0) list = []
  | sum list < target = []
