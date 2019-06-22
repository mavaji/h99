-- Find the last element of a list.

import Test.HUnit.Base

main :: IO()
main = do
  myLast [1,2,3,4] @?= 4
  myLast ['x', 'y', 'z'] @?= 'z'


myLast :: [a] -> a
myLast [] = error "empty list"
myLast [x] = x
myLast (x:xs) = myLast xs