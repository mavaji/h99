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