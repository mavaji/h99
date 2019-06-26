-- Remove the K'th element from a list.
module P11_20_Lists_Continued.P20 where

import           Test.HUnit.Base

main20 :: IO ()
main20 = do
  removeAt 2 "abcd" @?= ('b', "acd")

removeAt :: Int -> [a] -> (a, [a])
removeAt i xs = (xs !! (i - 1), take (i - 1) xs ++ drop i xs)
