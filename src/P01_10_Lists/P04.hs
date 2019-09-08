-- | Find the number of elements of a list.
module P01_10_Lists.P04 where

import           Test.HUnit.Base

main04 :: IO ()
main04 = do
  myLength [123, 456, 789] @?= 3
  myLength "Hello, world!" @?= 13

myLength :: [a] -> Int
myLength []     = 0
myLength (x:xs) = 1 + myLength (xs)
