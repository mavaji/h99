-- Rotate a list N places to the left.
-- Hint: Use the predefined functions length and (++).

main :: IO ()
main = do
  print $ rotate ['a','b','c','d','e','f','g','h'] 3
  print $ rotate ['a','b','c','d','e','f','g','h'] (-2)

rotate :: [a] -> Int -> [a]
rotate xs i
  | i >= 0 = drop i xs ++ take i xs
  | otherwise = rotate xs (length xs + i)