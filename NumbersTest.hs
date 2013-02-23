import Test.HUnit
import Numbers

conversionTest d w = TestCase (assertEqual describe w (numberToText d))
  where describe = "numberToText " ++ (show d) 

lessThanTwenty = zip [0..] ["Zero", "One", "Two", "Three", "Four", "Five", 
                  "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve",
                  "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen",
                  "Eighteen", "Nineteen"]

lt20 = [conversionTest d w | (d,w) <- lessThanTwenty]

tests = TestList lt20
