-- Create a list containing all integers within a given range.

import Test.HUnit.Base

main :: IO ()
main = do
  range 4 9 @?= [4,5,6,7,8,9]

range :: Int -> Int -> [Int]
range i j
 | i == j = [i]
 | otherwise = [i] ++ range (i + 1) j
