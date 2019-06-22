-- Remove the K'th element from a list.

import Test.HUnit.Base

main :: IO ()
main = do
  removeAt 2 "abcd" @?= ('b',"acd")

removeAt :: Int -> [a] -> (a, [a])
removeAt i xs = (xs !! (i - 1), take (i - 1) xs ++ drop i xs)