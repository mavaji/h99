-- | Find the last element of a list.
module P01_10_Lists.P01 where

import           Test.HUnit.Base

main01 :: IO ()
main01 = do
  myLast [1, 2, 3, 4] @?= 4
  myLast ['x', 'y', 'z'] @?= 'z'

myLast :: [a] -> a
myLast []     = error "empty list"
myLast [x]    = x
myLast (x:xs) = myLast xs
