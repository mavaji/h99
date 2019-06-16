--Find the last element of a list.

main :: IO()
main = do
  print(myLast [1,2,3,4])
  print(myLast ['x', 'y', 'z'])


myLast :: [a] -> a
myLast [] = error "empty list"
myLast [x] = x
myLast (x:xs) = myLast xs