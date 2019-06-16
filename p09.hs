--Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

main :: IO ()
main = do
  print(pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'])

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs)
  | x == head xs = [[x] ++ takeWhile (\y -> y==x) xs] ++ pack (dropWhile (\y -> y==x) xs)
  | otherwise = [[x]] ++ pack xs