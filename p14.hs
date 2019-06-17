main :: IO ()
main = do
  print $ dupli [1, 2, 3]

dupli :: [a] -> [a]
dupli [] = []
dupli [a] = [a, a]
dupli (x:xs) = [x, x] ++ dupli xs