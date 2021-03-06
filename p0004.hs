{-
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

Find the largest palindrome made from the product of two 3-digit numbers.
-}

isPalindrome :: Int -> Bool
isPalindrome n =
   let str = show n in 
   if str == reverse (str)
   then True
   else False

p0004 :: Int
p0004 = maximum [x * y | x <- [100..999] ,y <- [100..999] , isPalindrome (x * y) ]