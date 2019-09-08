-- | Rotate a list N places to the left.
--   Hint: Use the predefined functions length and (++).
module P11_20_Lists_Continued.P19 where

import           Test.HUnit.Base

main19 :: IO ()
main19 = do
  rotate ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'] 3 @?= "defghabc"
  rotate ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'] (-2) @?= "ghabcdef"

rotate :: [a] -> Int -> [a]
rotate xs i
  | i >= 0 = drop i xs ++ take i xs
  | otherwise = rotate xs (length xs + i)
