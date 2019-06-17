-- Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

main :: IO ()
main = do
  print(encode "aaaabccaadeeee")

encode :: (Eq a) => [a] -> [(Int, a)]
encode = map (\x -> (length x, x!!0)).pack

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs)
  | x == head xs = [[x] ++ takeWhile (\y -> y==x) xs] ++ pack (dropWhile (\y -> y==x) xs)
  | otherwise = [[x]] ++ pack xs