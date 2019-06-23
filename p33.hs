-- Determine whether two positive integer numbers are coprime. Two numbers are coprime if their greatest common divisor equals 1.

import Test.HUnit.Base

main = do
  coprime 35 64 @?= True

coprime :: Int -> Int -> Bool
coprime a b = (gcd a b) == 1