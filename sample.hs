#!/bin/ghci
-- To compile this into a runnable script, use ghc --make sample.hs
-- This module is needed by function isLower etc.
{-	-
	-	Comment Block
	-}
import GHC.Unicode

main = putStrLn "Hello World!"
addOne :: Integer -> Integer
addOne n = n + 1
lastName :: String -> String
lastName "anthony" = "gillis"
lastName "michelle" = "jocasta"
lastName "gregory" = "tragos"
-- otherwise string concat
lastName n = n++"Null"
-- Curry calling
areAscending::Integer->Integer->Integer->Bool
areAscending a b c = a < b && b < c
-- (mod a b) is equal to (a `mod` b)   {infix}
-- Also, (a + b) is equal to ((+) a b) {prefix}
-- Guard mode, each expression is valued, till true the assignment succeeds.
fizzBuzzHelper::Integer->String
fizzBuzzHelper n
    |n `mod` 3 == 0 && n `mod` 5 == 0 = "fizzBuzz"
    |n `mod` 3 == 0 = "fizz"
    |n `mod` 5 == 0 = "buzz"
    |otherwise = ""
-- Variable(function with return value) declared with type.
someValue::String
someValue="helloworld"
-- Type can also be specified with this format.
typeDecl::Float
typeDecl=(1::Float)+1.0
x=2
y=3
-- The 'let' set the variable declared to be local
func = let z = x + y
    in print z
-- Now x cannot be assigned to other values
safeDiv x y =
    let q = div x y
    in if y == 0 then 0 else q
loop = let x = x + 1
    in print x
-- And what's more, Int differs from Integer.
-- factorial::Int->Int
factorial n = if n > 1 then n * factorial (n - 1) else 1
-- Function with 'Set' as variable declaration, note set can be empty ()
-- +But keep in mind that everything in haskell is curried, so the set
-- +implementation itself shall be something like currying.
-- +According to (wiki.haskell.org/Curring)
setFunc::(Int,Int,Int)->Int
setFunc (a,b,c)=a+b+c
-- lambda functions
countLowercaseAndDigits :: String->Int
countLowercaseAndDigits = length . filter (\c -> isLower c|| isDigit c)
safeTail x |null x = []
	|otherwise = tail x
classify age = case age of
	0 -> "newborn"
	1 -> "infant"
	2 -> "toddler"
	_ -> "senior citizen" -- seems '_' equals is no special in this case
