-- | English number words
--   On financial documents, like cheques, numbers must sometimes be written in full words. Example: 175 must be written as
--   one-seven-five. Write a predicate full-words/1 to print (non-negative) integer numbers in full words.
module P95_99_Miscellaneous_Problems.P95 where

import           Data.Map        (Map, (!))
import qualified Data.Map        as Map
import           Test.HUnit.Base

main95 :: IO ()
main95 = do
  fullWords 175 @?= "one-seven-five"
  fullWords 90 @?= "nine-zero"

intMap :: Map Int String
intMap =
  Map.fromList
    [ (0, "zero")
    , (1, "one")
    , (2, "two")
    , (3, "three")
    , (4, "four")
    , (5, "five")
    , (6, "six")
    , (7, "seven")
    , (8, "eight")
    , (9, "nine")
    ]

fullWords :: Int -> String
fullWords n
  | n < 0 = error "Negative Number"
  | n < 10 = intMap ! n
  | n >= 10 = fullWords (n `div` 10) ++ "-" ++ intMap ! (n `mod` 10)
