main :: IO ()
main = do
  print $ dropEvery "abcdefghik" 3

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery [a] 1 = []
dropEvery xs i = (take (i - 1) xs) ++ (dropEvery (drop i xs) i)