{-
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
-}

{- prime number generator / h99 No.31 Solution -}
isPrime :: (Integral a) => a -> Bool
isPrime n | n < 4 = n /= 1 
isPrime n = all ((/=0) . mod n) $ takeWhile (<= m) candidates 
        where candidates = (2:3:[x + i | x <- [6,12..], i <- [-1,1]])
              m = floor . sqrt $ fromIntegral n

{- it's too slow -}
p0010 :: Int
p0010 = sum $ takeWhile (<= 2000000) $ filter isPrime [1..]
