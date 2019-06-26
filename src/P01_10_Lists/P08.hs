-- Eliminate consecutive duplicates of list elements.
module P01_10_Lists.P08 where

import           Test.HUnit.Base

main08 :: IO ()
main08 = do
  compress "aaaabccaadeeee" @?= "abcade"

compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:xs)
  | x == head (xs) = compress xs
  | otherwise = x : compress xs
