--Eliminate consecutive duplicates of list elements.

main :: IO ()
main = do
  print(compress "aaaabccaadeeee")

compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:xs)
  | x == head(xs) = compress xs
  | otherwise = x:compress xs