--Truth tables for logical expressions (2).
--Continue problem P46 by defining and/2, or/2, etc as being operators. This allows to write the logical expression in
-- the more natural way, as in the example: A and (A or not B). Define operator precedence as usual; i.e. as in Java.

module P46_50_Logic_And_Codes.P47 where

import           P46_50_Logic_And_Codes.P46
import           Test.HUnit.Base

main47 :: IO()
main47 = do
  putStr $ table (\a b -> (a `and2` (a `or2` not b)))