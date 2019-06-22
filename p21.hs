-- Insert an element at a given position into a list.

import Test.HUnit.Base

main :: IO ()
main = do
  (insertAt 'X' "abcd" 2) @?=  "aXbcd"

insertAt :: a -> [a] -> Int -> [a]
insertAt x xs i = take (i - 1) xs ++ [x] ++ drop (i - 1) xs