-- Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

main :: IO ()
main = do
  print(isPalindrome [1,2,3])
  print(isPalindrome "madamimadam")
  print(isPalindrome [1,2,4,8,16,8,4,2,1])

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [x] = True
isPalindrome xs = (head xs == last xs) && isPalindrome ((init.tail) xs)