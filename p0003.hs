{- 
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
-}

import Data.List

isPrime :: Int -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime n = null [ x | x <- [2..n -1], mod n x == 0]

number = 600851475143

primeFactors :: Integral a => a -> [a]
primeFactors n = primeFactors' n 2
  where
    primeFactors' 1 _ = []
    primeFactors' n f
      | mod n f == 0 = f : primeFactors' (div n f) f
      | otherwise      = primeFactors' n (f + 1)

p0003 :: Int
p0003 = Data.List.last (primeFactors number)

