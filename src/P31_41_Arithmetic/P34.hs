-- | Calculate Euler's totient function phi(m).
--   Euler's so-called totient function phi(m) is defined as the number of positive integers r (1 <= r < m) that are coprime to m.
--   Example: m = 10: r = 1,3,7,9; thus phi(m) = 4. Note the special case: phi(1) = 1.
module P31_41_Arithmetic.P34 where

import           Test.HUnit.Base

main34 :: IO ()
main34 = do
  totient 1 @?= 1
  totient 10 @?= 4

totient :: Int -> Int
totient 1 = 1
totient n = length $ filter (\x -> gcd x n == 1) [1 .. n - 1]
