--Define predicates and/2, or/2, nand/2, nor/2, xor/2, impl/2 and equ/2 (for logical equivalence) which succeed or fail according to the result of their respective operations; e.g. and(A,B) will succeed, if and only if both A and B succeed.
--A logical expression in two variables can then be written as in the following example: and(or(A,B),nand(A,B)).
--Now, write a predicate table/3 which prints the truth table of a given logical expression in two variables.
--Example:
--(table A B (and A (or A B)))
--true true true
--true fail true
--fail true fail
module P46_50_Logic_And_Codes.P46 where

import           Test.HUnit.Base

main46 :: IO ()
main46 = do
  putStr $ table (\a b -> (and2 a (or2 a b)))

table :: (Bool -> Bool -> Bool) -> String
table f =
  "True True " ++
  show (f True True) ++
  "\n" ++
  "True False " ++
  show (f True False) ++ "\n" ++ "False True " ++ show (f False True) ++ "\n" ++ "False False " ++ show (f False False)

and2 :: Bool -> Bool -> Bool
and2 a b = a && b

or2 :: Bool -> Bool -> Bool
or2 a b = a || b

nand2 :: Bool -> Bool -> Bool
nand2 a b = not (a && b)

nor2 :: Bool -> Bool -> Bool
nor2 a b = not (a || b)

xor2 :: Bool -> Bool -> Bool
xor2 a b = (a && not b) || (not a && b)

impl2 :: Bool -> Bool -> Bool
impl2 a b = not a || b

equ2 :: Bool -> Bool -> Bool
equ2 a b = a == b
