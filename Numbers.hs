module Numbers
( numberToText
) where

numberToText :: Int -> String
numberToText x  
    | x < 0 = "Minus " ++ posNumToText (-x)
    | otherwise = posNumToText x

posNumToText :: Int -> String
posNumToText x
    | x < 100 = doubleDigitToText x
    | otherwise = "Too Big"

smallNumToText :: Int -> String
smallNumToText x = ["Zero", "One", "Two", "Three", "Four", "Five", 
                  "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve",
                  "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen",
                  "Eighteen", "Nineteen"] !! x

doubleDigitToText :: Int -> String
doubleDigitToText x
    | x < 20 = smallNumToText x
    | units == 0 = tensToText tens
    | otherwise = (tensToText tens) ++ " " ++ (smallNumToText units)
    where tens = x `div` 10
          units = x `mod` 10

tensToText :: Int -> String
tensToText x = ["", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", 
                 "Seventy", "Eighty", "Ninety"] !! x
