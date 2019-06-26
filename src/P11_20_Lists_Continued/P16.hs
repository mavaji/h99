-- Drop every N'th element from a list.
module P11_20_Lists_Continued.P16 where

import           Test.HUnit.Base

main16 :: IO ()
main16 = do
  dropEvery "abcdefghik" 3 @?= "abdeghk"

dropEvery :: [a] -> Int -> [a]
dropEvery [] _  = []
dropEvery [a] 1 = []
dropEvery xs i  = (take (i - 1) xs) ++ (dropEvery (drop i xs) i)
