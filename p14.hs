-- Duplicate the elements of a list.

import Test.HUnit.Base

main :: IO ()
main = do
  dupli [1, 2, 3] @?= [1,1,2,2,3,3]

dupli :: [a] -> [a]
dupli [] = []
dupli [a] = [a, a]
dupli (x:xs) = [x, x] ++ dupli xs