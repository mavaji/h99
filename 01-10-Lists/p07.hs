-- Flatten a nested list structure.

import Test.HUnit.Base

main :: IO ()
main = do
  flatten (Elem 5) @?= [5]
  flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) @?= [1,2,3,4,5]
--  flatten (List []) @?= []

data NestedList a = Elem a | List [NestedList a] deriving (Show, Eq)

flatten :: NestedList a -> [a]
flatten (List []) = []
flatten (Elem x) = [x]
flatten (List (x:xs)) = flatten x ++  flatten(List xs)