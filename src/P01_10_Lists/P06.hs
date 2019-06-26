-- Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
module P01_10_Lists.P06 where

import           Test.HUnit.Base

main06 :: IO ()
main06 = do
  isPalindrome [1, 2, 3] @?= False
  isPalindrome "madamimadam" @?= True
  isPalindrome [1, 2, 4, 8, 16, 8, 4, 2, 1] @?= True

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome []  = True
isPalindrome [x] = True
isPalindrome xs  = (head xs == last xs) && isPalindrome ((init . tail) xs)
