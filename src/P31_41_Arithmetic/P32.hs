-- | Determine the greatest common divisor of two positive integer numbers. Use Euclid's algorithm
module P31_41_Arithmetic.P32 where

import           Test.HUnit.Base

main32 :: IO ()
main32 = do
  [myGCD 36 63, myGCD (-3) (-6), myGCD (-3) 6] @?= [9, 3, 3]

myGCD :: Int -> Int -> Int
myGCD a 0 = a
myGCD 0 b = b
myGCD a b = myGCD min' (max' `mod` min')
  where
    min' =
      if a < b
        then abs a
        else abs b
    max' =
      if a < b
        then abs b
        else abs a
