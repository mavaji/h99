-- Create a list containing all integers within a given range.

main :: IO ()
main = do
  print $ range 4 9

range :: Int -> Int -> [Int]
range i j
 | i == j = [i]
 | otherwise = [i] ++ range (i + 1) j
