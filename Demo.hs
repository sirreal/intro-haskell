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
t, f :: Bool
t = True
f = False

-- Simple definition
add :: Integer -> Integer -> Integer
add a b = a + b

-- Pattern matching
divide :: Double -> Double -> Double
divide _ 0 = error "Divide by 0"
divide a b = a / b

-- If
-- ¡Ambas ramas deben ser presentes tener el mismo tipo!
fibo :: Integer -> Integer
fibo n = if n < 1 then error "Fibo' < 1"
          else if n < 3
               then 1
               else fibo (n - 1) + fibo (n - 1)

-- Guard
fibo' :: Integer -> Integer
fibo' n | n < 1 = error "Fibo < 1"
        | n < 3 = 1
        | otherwise = fibo' (n - 1) + fibo' (n - 2)

-- Case
fibo'' :: Integer -> Integer
fibo'' n = case (n < 1, n < 3) of
       (True, _) -> error "Fibo < 1"
       (_, True) -> 1
       _         -> fibo'' (n - 1) + fibo'' (n - 2)

-- Lazy
fibos :: [Integer]
fibos = scanl (+) 1 (0:fibos)

