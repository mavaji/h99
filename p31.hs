-- Determine whether a given integer number is prime.

import Test.HUnit.Base

main :: IO ()
main = do
  isPrime 1 @?= False
  isPrime 7 @?= True
  isPrime 8 @?= False

isPrime :: Int -> Bool
isPrime 1 = False
isPrime n = (length $ filter (\x -> n `mod` x == 0) [1..n]) == 2
