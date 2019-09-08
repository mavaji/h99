-- | Determine whether a given integer number is prime.
module P31_41_Arithmetic.P31 where

import           Test.HUnit.Base

main31 :: IO ()
main31 = do
  isPrime 1 @?= False
  isPrime 7 @?= True
  isPrime 8 @?= False

isPrime :: Int -> Bool
isPrime 1 = False
isPrime n = (length $ filter (\x -> n `mod` x == 0) [1 .. n]) == 2
