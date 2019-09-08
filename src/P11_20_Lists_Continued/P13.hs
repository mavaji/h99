-- | Run-length encoding of a list (direct solution).
--   Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.
module P11_20_Lists_Continued.P13 where

import           Test.HUnit.Base

main13 :: IO ()
main13 = do
  encodeDirect "aaaabccaadeeee" @?=
    [Multiple 4 'a', Single 'b', Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e']

data Node' a
  = Single a
  | Multiple Int a
  deriving (Show, Eq)

encodeDirect :: (Eq a) => [a] -> [Node' a]
encodeDirect [] = []
encodeDirect [a] = [Single a]
encodeDirect (x:xs)
  | x == head xs = [Multiple (((length . takeWhile (== x)) xs) + 1) x] ++ encodeDirect (dropWhile (== x) xs)
  | otherwise = [Single x] ++ encodeDirect xs
