-- Remove the K'th element from a list.

main :: IO ()
main = do
  print $ removeAt 2 "abcd"

removeAt :: Int -> [a] -> (a, [a])
removeAt i xs = (xs !! (i - 1), take (i - 1) xs ++ drop i xs)