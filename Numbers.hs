module Numbers
( numberToText
) where

numberToText :: Int -> String
numberToText x  
    | x < 0 = "Minus " ++ posNumToText (-x)
    | otherwise = posNumToText x

posNumToText :: Int -> String
posNumToText x
    | x < 20 = smallNumToText x
    | otherwise = sub100ToText x

smallNumToText :: Int -> String
smallNumToText x = ["Zero", "One", "Two", "Three", "Four", "Five", 
                  "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve",
                  "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen",
                  "Eighteen", "Nineteen"] !! x

sub100ToText :: Int -> String
sub100ToText x = ["", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", 
                 "Seventy", "Eighty", "Ninety"] !! (x `div` 10)
