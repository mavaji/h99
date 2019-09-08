-- | Insert an element at a given position into a list.
module P21_28_Lists_Again.P21 where

import           Test.HUnit.Base

main21 :: IO ()
main21 = do
  (insertAt 'X' "abcd" 2) @?= "aXbcd"

insertAt :: a -> [a] -> Int -> [a]
insertAt x xs i = take (i - 1) xs ++ [x] ++ drop (i - 1) xs
