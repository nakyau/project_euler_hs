{- http://projecteuler.net/problem=1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000. -}

p0001 :: Int
p0001 = foldl (+) 0 [ a | a <- [1..1000] , mod a 3 == 0 || mod a 5 == 0]