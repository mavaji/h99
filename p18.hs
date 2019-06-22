-- Extract a slice from a list.
-- Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the original list (both limits included). Start counting the elements with 1.

main :: IO ()
main = do
  print $ slice ['a','b','c','d','e','f','g','h','i','k'] 3 7

slice :: [a] -> Int -> Int -> [a]
slice xs i j = take (j - i + 1) xs'
  where xs' = drop (i - 1) xs