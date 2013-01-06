{-
A Pythagorean triplet is a set of three nuatural numbers a < b < c ,
for which 
a^2 + b^2 =c^2

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c =
  1000.
find the product abc. 
-}


p0009 = [ a * b * (1000 - a - b) | a <- [1..998], b <- [1..998], b >= a, a ^ 2 + b ^ 2 == (1000 - a - b) ^ 2]
 

