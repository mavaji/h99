-- Modified run-length encoding.
-- Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.
module P11_20_Lists_Continued.P11 where

import           Test.HUnit.Base

main11 :: IO ()
main11 = do
  encode "aaaabccaadeeee" @?= [Multiple 4 'a', Single 'b', Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e']

data Node' a
  = Single a
  | Multiple Int a
  deriving (Show, Eq)

encode :: (Eq a) => [a] -> [Node' a]
encode = map (\x -> node x) . pack

node :: (Eq a) => [a] -> Node' a
node [x] = Single x
node x   = Multiple (length x) (head x)

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs)
  | x == head xs = [[x] ++ takeWhile (\y -> y == x) xs] ++ pack (dropWhile (\y -> y == x) xs)
  | otherwise = [[x]] ++ pack xs
