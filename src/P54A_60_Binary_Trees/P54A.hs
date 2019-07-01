--Check whether a given term represents a binary tree
module P54A_60_Binary_Trees.P54A where

main54A :: IO ()
main54A = do
  print tree1
  print tree1'
  print tree2
--  print tree3
  print tree4

data Tree a
  = Empty
  | Branch a (Tree a) (Tree a)
  deriving (Show, Eq)

tree1 =
  Branch
    'a'
    (Branch 'b' (Branch 'd' Empty Empty) (Branch 'e' Empty Empty))
    (Branch 'c' Empty (Branch 'f' (Branch 'g' Empty Empty) Empty))

leaf x = Branch x Empty Empty

tree1' = Branch 'a' (Branch 'b' (leaf 'd') (leaf 'e')) (Branch 'c' Empty (Branch 'f' (leaf 'g') Empty))

-- A binary tree consisting of a root node only
tree2 = Branch 'a' Empty Empty

-- An empty binary tree
tree3 = Empty

-- A tree of integers
tree4 = Branch 1 (Branch 2 Empty (Branch 4 Empty Empty)) (Branch 2 Empty Empty)
