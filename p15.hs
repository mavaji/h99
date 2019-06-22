-- Replicate the elements of a list a given number of times.

import Test.HUnit.Base

main :: IO ()
main = do
  repli "abc" 3 @?= "aaabbbccc"

repli :: [a] -> Int -> [a]
repli [] _ = []
repli _ 0 = []
repli (x:xs) i = (repeat' i x) ++ (repli xs i)


repeat' :: Int -> a -> [a]
repeat' 0 _ = []
repeat' 1 a = [a]
repeat' n a = a:repeat' (n - 1) a