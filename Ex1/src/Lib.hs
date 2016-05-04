module Lib
( lastDigit
, dropLastDigit
, toRevDigits
, doubleEveryOther
, sumDigits
, luhn
) where

{--
 - Validando tarjetas de credito
 - Algoritmo Luhn
 -
 - Implementaremos el algoritmo Luhn,
 - una forma de distinguir entre números
 - válidos y números aleatorios.
 -
 - El algoritmo es así:
 - 
 - Duplicar los dígitos alternos empezando por el
 - 2º por la derecha:
 - [5, 5, 9, 4] -> [10, 5, 18, 4]
 -
 - Añadir todos los dígitos en este resultado
 - (1+0) + 5 + (1+8) + 4 = 19
 -
 - Calcular el resto cuando se divide entre 10
 - 19 / 10 = 9
 -
 - Si el resultado es 0, el número es válido.
 -}

-- Exercise 1 -----------------------------------------

-- Sacar el último dígito de un número
lastDigit :: Integer -> Integer
lastDigit = undefined

-- Truncar el último dígito
dropLastDigit :: Integer -> Integer
dropLastDigit = undefined

-- Exercise 2 -----------------------------------------
-- Invertir los digitos de un número (como lista)
toRevDigits :: Integer -> [Integer]
toRevDigits = undefined

-- Exercise 3 -----------------------------------------

-- Duplicar dígitos alternos empezando por el 2º por la dcha
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther = undefined

-- Exercise 4 -----------------------------------------

-- Calcular la suma de todos los *dígitos* de todos los números
sumDigits :: [Integer] -> Integer
sumDigits = undefined


-- Exercise 5 -----------------------------------------

-- Valida un número de tarjeta
luhn :: Integer -> Bool
luhn = undefined

