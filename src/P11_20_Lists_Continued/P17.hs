-- | Split a list into two parts; the length of the first part is given.
--   Do not use any predefined predicates.
module P11_20_Lists_Continued.P17 where

import           Test.HUnit.Base

main17 :: IO ()
main17 = do
  split "abcdefghik" 3 @?= ("abc", "defghik")

split :: [a] -> Int -> ([a], [a])
split [] _ = ([], [])
split (x:xs) 1 = ([x], xs)
split (x:xs) i = (x : fst split_i_1, snd split_i_1)
  where
    split_i_1 = split xs (i - 1)
