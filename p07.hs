--Flatten a nested list structure.

main :: IO ()
main = do
  print(flatten (Elem 5))
  print(flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]))
--  print(flatten (List []))

data NestedList a = Elem a | List [NestedList a] deriving Show

flatten :: NestedList a -> [a]
flatten (List []) = []
flatten (Elem x) = [x]
flatten (List (x:xs)) = flatten x ++  flatten(List xs)