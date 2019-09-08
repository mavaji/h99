-- | Gray codes.
--
--   An n-bit Gray code is a sequence of n-bit strings constructed according to certain rules. For example,
--     n = 1: C(1) = ['0','1'].
--     n = 2: C(2) = ['00','01','11','10'].
--     n = 3: C(3) = ['000','001','011','010',´110´,´111´,´101´,´100´].
module P46_50_Logic_And_Codes.P49 where

import           Test.HUnit.Base

main49 :: IO ()
main49 = do
  gray 1 @?= ["0", "1"]
  gray 2 @?= ["00", "01", "11", "10"]
  gray 3 @?= ["000", "001", "011", "010", "110", "111", "101", "100"]

gray :: Int -> [String]
gray 1 = ["0", "1"]
gray n = map ("0" ++) gray_n_1 ++ map ("1" ++) (reverse gray_n_1)
  where
    gray_n_1 = gray (n - 1)
