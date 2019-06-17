-- Run-length encoding of a list (direct solution).
-- Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.

main :: IO ()
main = do
  print $ encodeDirect "aaaabccaadeeee"

data Node a = Single a | Multiple Int a deriving Show

encodeDirect :: (Eq a) => [a] -> [Node a]
encodeDirect [] = []
encodeDirect [a] = [Single a]
encodeDirect (x:xs)
  | x == head xs = [Multiple (((length . takeWhile (== x)) xs) + 1) x] ++ encodeDirect (dropWhile (== x) xs)
  | otherwise = [Single x] ++ encodeDirect xs