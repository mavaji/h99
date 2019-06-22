-- Eliminate consecutive duplicates of list elements.

import Test.HUnit.Base

main :: IO ()
main = do
  compress "aaaabccaadeeee" @?= "abcade"

compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:xs)
  | x == head(xs) = compress xs
  | otherwise = x:compress xs