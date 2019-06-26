-- Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.
module P01_10_Lists.P10 where

import           Test.HUnit.Base

main10 :: IO ()
main10 = do
  encode "aaaabccaadeeee" @?= [(4, 'a'), (1, 'b'), (2, 'c'), (2, 'a'), (1, 'd'), (4, 'e')]

encode :: (Eq a) => [a] -> [(Int, a)]
encode = map (\x -> (length x, head x)) . pack

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs)
  | x == head xs = [[x] ++ takeWhile (\y -> y == x) xs] ++ pack (dropWhile (\y -> y == x) xs)
  | otherwise = [[x]] ++ pack xs
