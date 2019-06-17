main :: IO ()
main = do
  print $ repli "abc" 3

repli :: [a] -> Int -> [a]
repli [] _ = []
repli _ 0 = []
repli (x:xs) i = (repeat' i x) ++ (repli xs i)


repeat' :: Int -> a -> [a]
repeat' 0 _ = []
repeat' 1 a = [a]
repeat' n a = a:repeat' (n - 1) a