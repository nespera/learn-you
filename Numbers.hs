module Numbers
( numberToText
) where

numberToText :: Int -> String
numberToText x  
    | x < 0 = "Minus " ++ numberToText (-x)
    | otherwise = smallNumToText x

smallNumToText :: Int -> String
smallNumToText x = ["Zero", "One", "Two", "Three", "Four", "Five", 
                  "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve",
                  "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen",
                  "Eighteen", "Nineteen"] !! x
