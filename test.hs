--myLength [] = 0
--myLength (n:ns) = 1 + myLength ns

{-
myReverse [] = []
myReverse (n:ns) = myReverse ns ++ [n]
-}
double x = x + x + x + x
quadruple x = double (double x)

factorial n = product [1..n]
average ns = sum ns `div` length ns

a = b + c
	where {b = 1; c = 2}
d = a * 2
