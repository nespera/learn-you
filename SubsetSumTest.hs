import Test.HUnit
import SubsetSum

subsetTestCase :: [Int] -> Int -> [[Int]] -> Test
subsetTestCase list target expected 
  = TestCase(assertEqual describe expected (sumFrom list target))
  where describe = "sumFrom " ++ show(list) ++ " " ++ show(target)

tests = TestList [subsetTestCase l t e | (l,t,e) <- [ 
    ([], 10, []), 
    ([2,3], 10, []), 
    ([-1,10], 10, []),
    ([0,8], 8, []), 
    ([8], 8, [[8]]), 
    ([1,8,10], 8, [[8]]), 
    ([4,4], 8, [[4,4]]),
    ([1,4,5,6], 10, [[1,4,5],[4,6]]), 
    ([6,4,5,1], 10, [[1,4,5],[4,6]]),
    ([1,1,1,1,1], 2, [[1,1]]),
    ([2,4,6,8,10,12,14,16,2,2,2,2,2,4,4,6], 17, [])
  ]] 
