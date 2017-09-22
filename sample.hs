#!/bin/ghci
-- To compile this into a runnable script, use ghc --make sample.hs
-- This module is needed by function isLower etc.
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
fizzBuzzHelper::Integer->String
fizzBuzzHelper n
    |n `mod` 3 == 0&&n `mod` 5 ==0 = "fizzBuzz"
    |n `mod` 3 == 0 = "fizz"
    |n `mod` 5 == 0 = "buzz"
    |otherwise=""
someValue::String
someValue="helloworld"
x=2
y=3
func=let z=x+y
    in print z
-- now x cannot be assigned to other values
safeDiv x y=
    let q=div x y
    in if y == 0 then 0 else q
loop=let x= x+1
    in print x
-- you should be full aware what is functional programming language by the
-- +following example.
-- +And what's more, Int differs from Integer.
--factorial::Int->Int
factorial n=if n > 1 then n * factorial(n-1) else 1
haskellSpirit=factorial
-- Type is decleared through this format.
typeDecl::Float
typeDecl=(1::Float)+1.0
-- Function with Set declaration, also set can be empty ()
setFunc::(Int,Int,Int)->Int
setFunc (a,b,c)=a+b+c
-- lambda functions
countLowercaseAndDigits :: String->Int
countLowercaseAndDigits = length . filter (\c -> isLower c|| isDigit c)
