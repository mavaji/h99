-- Construct completely balanced binary trees
-- In a completely balanced binary tree, the following property holds for every node: The number of nodes in its left
--   subtree and the number of nodes in its right subtree are almost equal, which means their difference is not greater than one.
-- Write a function cbal-tree to construct completely balanced binary trees for a given number of nodes.
-- The predicate should generate all solutions via backtracking. Put the letter 'x' as information into all nodes of the tree.
module P54A_60_Binary_Trees.P55 where

import           Test.HUnit.Base

main55 :: IO ()
main55 = do
  len tree1 @?= 3
  isBalanced tree1 @?= True
  length (cbalTree 4) @?= 8
  print $ cbalTree 4

data Tree a
  = Empty
  | Branch a (Tree a) (Tree a)
  deriving (Show, Eq)

len :: Tree a -> Int
len Empty                  = 0
len (Branch a Empty Empty) = 1
len (Branch a left right)  = 1 + max (len left) (len right)

isBalanced :: Tree a -> Bool
isBalanced Empty                 = True
isBalanced (Branch a left right) = abs (len left - len right) <= 1

append :: a -> Tree a -> [Tree a]
append a Empty = [Branch a Empty Empty]
append t (Branch a left right) = [Branch a x right | x <- leftA] ++ [Branch a left x | x <- rightA]
  where
    leftA = append t left
    rightA = append t right

cbalTree :: Int -> [Tree Char]
cbalTree 0 = [Empty]
cbalTree 1 = [Branch 'x' Empty Empty]
cbalTree i = filter isBalanced cbal1
  where
    cbal1 = concatMap (append 'x') (cbalTree (i - 1))

tree1 = Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty (Branch 'x' Empty Empty))
