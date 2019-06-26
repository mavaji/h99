-- Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.
module P01_10_Lists.P09 where

import           Test.HUnit.Base

main09 :: IO ()
main09 = do
  pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'] @?= ["aaaa", "b", "cc", "aa", "d", "eeee"]

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs)
  | x == head xs = [[x] ++ takeWhile (\y -> y == x) xs] ++ pack (dropWhile (\y -> y == x) xs)
  | otherwise = [[x]] ++ pack xs
