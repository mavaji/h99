--Find the last but one element of a list.

main :: IO ()
main = do
  print(myButLast [1,2,3,4])
  print(myButLast ['a'..'z'])

myButLast :: [a] -> a
myButLast [] = error "empty list"
myButLast [x] = error "one element list"
myButLast [x, y] = x
myButLast (x:xs) = myButLast xs