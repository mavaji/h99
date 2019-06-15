main :: IO ()
main = do
  print(elementAt [1,2,3] 2)
  print(elementAt "haskell" 5)

elementAt :: [a] -> Int -> a
elementAt [] _ = error "empty list"
elementAt (x:xs) 1 = x
elementAt (x:xs) i
  | length xs < i-1 = error "invalid index"
  | otherwise = elementAt xs (i-1)