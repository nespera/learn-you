import Test.HUnit
import Numbers

conversionTest :: Int -> String -> Test
conversionTest d w = TestCase (assertEqual describe w (numberToText d))
  where describe = "numberToText " ++ (show d) 

tests = TestList [conversionTest d w | (d,w) <- [
                    ((-14), "Minus Fourteen"),
                    ((-8), "Minus Eight"),
                    (0,"Zero"), 
                    (1, "One"), 
                    (2, "Two"), 
                    (6, "Six"), 
                    (13, "Thirteen")
                 ]]
