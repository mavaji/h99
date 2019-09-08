-- | Find the K'th element of a list. The first element in the list is number 1.
module P01_10_Lists.P03 where

import           Test.HUnit.Base

main03 :: IO ()
main03 = do
  elementAt [1, 2, 3] 2 @?= 2
  elementAt "haskell" 5 @?= 'e'

elementAt :: [a] -> Int -> a
elementAt [] _ = error "empty list"
elementAt (x:xs) 1 = x
elementAt (x:xs) i
  | length xs < i - 1 = error "invalid index"
  | otherwise = elementAt xs (i - 1)
