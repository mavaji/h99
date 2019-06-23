-- Drop every N'th element from a list.

import Test.HUnit.Base

main :: IO ()
main = do
  dropEvery "abcdefghik" 3 @?= "abdeghk"

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery [a] 1 = []
dropEvery xs i = (take (i - 1) xs) ++ (dropEvery (drop i xs) i)