{-
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all
  of the numbers from 1 to 20?
232792560 
-}

multiples_1to20 :: Int -> Bool
multiples_1to20 x = multiples_1to20' x 20
  where
    multiples_1to20' _ 10 = True {- 10 or under numbers are contained in dividers of 11 to 20 -}
    multiples_1to20' x n 
      | mod x n /= 0 = False
      | otherwise = multiples_1to20' x (n - 1) 

start :: Int
start = 2*3*5*7*11*13*17*19

p0005 :: Int
p0005 = head $ filter multiples_1to20 [x | x <- [start, start * 2 ..]]
