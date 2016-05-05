module Demo where

{-- Demo of Haskell language
 -- Run this file with stack ghci
 -- > :l Demo
 -- Modify the contents and save
 -- type :r in ghci to reload
 --}

-- Type signature
-- name :: type -> type

-- Some values and types
t :: Bool
t = True

f :: Bool
f = False

-- Lists (homogenous)
oneToThree :: [Integer]
oneToThree = [1, 2, 3]
-- invalid [1, "2", '3']

-- Infinite data structures are OK!
oneToThree' :: [Integer]
oneToThree' = take 3 [1..] -- that's an infinite list

-- Simple function definition
add :: Integer -> Integer -> Integer
add a b = a + b

-- Notice, no parentheses, no commas!
-- NOT: `f(a, b, c)`
-- SIMPLY: `f a b c`

-- Text
helloWorld :: String
helloWorld = "Hello World!"

-- String == [Char]
hiWorld :: String
hiWorld = ['H','i',' ','W','o','r','l','d']


-- Pattern matching
divide :: Double -> Double -> Double
divide _ 0 = error "Divide by 0"
divide a b = a / b

-- More useful pattern matching
-- (:) is the list constructor
-- [1, 2, 3] == 1 : 2 : 3 : []
head' :: [a] -> a
head' [] = error "Can't take head of empty list!"
head' (x:_) = x


-- If
-- ¡Ambas ramas deben ser presentes tener el mismo tipo!
fibo :: Integer -> Integer
fibo n = if n < 1 then error "fibo < 1"
         else if n < 3
              then 1
              else fibo (n - 1) + fibo (n - 1)

-- Guard
fibo' :: Integer -> Integer
fibo' n | n < 1 = error "fibo' < 1"
        | n < 3 = 1
        | otherwise = fibo' (n - 1) + fibo' (n - 2)

-- Case
fibo'' :: Integer -> Integer
fibo'' n = case (n < 1, n < 3) of
       (True, _) -> error "fibo'' < 1"
       (_, True) -> 1
       _         -> fibo'' (n - 1) + fibo'' (n - 2)

-- Lazy
fibos :: [Integer]
fibos = scanl (+) 1 (0:fibos)


