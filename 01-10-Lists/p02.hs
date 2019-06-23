-- Find the last but one element of a list.

import Test.HUnit.Base

main :: IO ()
main = do
  myButLast [1,2,3,4] @?= 3
  myButLast ['a'..'z'] @?= 'y'

myButLast :: [a] -> a
myButLast [] = error "empty list"
myButLast [x] = error "one element list"
myButLast [x, y] = x
myButLast (x:xs) = myButLast xs