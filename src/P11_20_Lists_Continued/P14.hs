-- | Duplicate the elements of a list.
module P11_20_Lists_Continued.P14 where

import           Test.HUnit.Base

main14 :: IO ()
main14 = do
  dupli [1, 2, 3] @?= [1, 1, 2, 2, 3, 3]

dupli :: [a] -> [a]
dupli []     = []
dupli [a]    = [a, a]
dupli (x:xs) = [x, x] ++ dupli xs
