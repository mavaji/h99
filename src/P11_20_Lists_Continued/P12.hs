-- | Decode a run-length encoded list.
--   Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.
module P11_20_Lists_Continued.P12 where

import           Test.HUnit.Base

main12 :: IO ()
main12 = do
  decode [Multiple 4 'a', Single 'b', Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e'] @?= "aaaabccaadeeee"

data Node' a
  = Single a
  | Multiple Int a
  deriving (Show, Eq)

decode :: [Node' a] -> [a]
decode = flatMap . map (\x -> unpack x)

unpack :: Node' a -> [a]
unpack (Single x)     = [x]
unpack (Multiple i x) = repeat' i x

repeat' :: Int -> a -> [a]
repeat' 0 _ = []
repeat' 1 a = [a]
repeat' n a = a : repeat' (n - 1) a

flatMap :: [[a]] -> [a]
flatMap []     = []
flatMap [[]]   = []
flatMap [[a]]  = [a]
flatMap (x:xs) = x ++ flatMap xs
