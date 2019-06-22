-- Insert an element at a given position into a list.

main :: IO ()
main = do
  print $ insertAt 'X' "abcd" 2

insertAt :: a -> [a] -> Int -> [a]
insertAt x xs i = take (i - 1) xs ++ [x] ++ drop (i - 1) xs