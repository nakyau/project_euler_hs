{-
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
-}

{- Sieve of Eratosthenes -}
sieve :: [Int] -> [Int]
sieve (x:xs) = x : sieve [p | p <- xs, mod p x /= 0]

{- it's too slow -}
p0010 :: Int
p0010 = sum $ takeWhile (<= 2000000) $ 2:sieve [3,5..]
