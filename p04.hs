-- Find the number of elements of a list.

import Test.HUnit.Base

main :: IO()
main = do
  myLength [123, 456, 789] @?= 3
  myLength "Hello, world!"@?= 13

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength(xs)