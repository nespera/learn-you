import Test.HUnit
import SubsetSum

subsetTestCase :: [Int] -> Int -> [[Int]] -> Test
subsetTestCase list target expected 
  = TestCase(assertEqual describe expected (sumFrom list target))
  where describe = "sumFrom " ++ show(list) ++ " " ++ show(target)

tests = TestList [subsetTestCase l t e | (l,t,e) <- [ 
    ([], 10, []), 
    ([2,3], 10, []), 
    ([-1,10], 10, []) 
  ]] 
