-- Reverse a list.
module P01_10_Lists.P05 where

import           Test.HUnit.Base

main05 :: IO ()
main05 = do
  myReverse "A man, a plan, a canal, panama!" @?= "!amanap ,lanac a ,nalp a ,nam A"
  myReverse [1, 2, 3, 4] @?= [4, 3, 2, 1]

myReverse :: [a] -> [a]
myReverse []     = []
myReverse (x:xs) = (myReverse xs) ++ [x]
