{-
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10,001st prime number?
-}

{- Sieve of Eratosthenes -}
sieve :: [Int] -> [Int]
sieve (x:xs) = x : sieve [p | p <- xs, mod p x /= 0]


p0007 :: [Int]
p0007 = take 10001 $ sieve [2..]
