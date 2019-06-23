-- Split a list into two parts; the length of the first part is given.
-- Do not use any predefined predicates.

import Test.HUnit.Base

main :: IO ()
main = do
  split "abcdefghik" 3 @?= ("abc", "defghik")

split :: [a] -> Int -> ([a], [a])
split [] _ = ([], [])
split (x:xs) 1 = ([x], xs)
split (x:xs) i = (x:fst split_i_1, snd split_i_1)
  where split_i_1 = split xs (i - 1)