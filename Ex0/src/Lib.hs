module Lib where


-- Ultimo elemento de una lista
ultimo :: [a] -> a
ultimo = undefined


-- Penultimo elemento de una lista
penUltimo :: [a] -> a
penUltimo = undefined


-- Elemento n de una lista
nthElemento :: [a] -> a -> a
nthElemento = undefined


-- Numero de elementos de una lista
cuentaElementos :: [a] -> Int
cuentaElementos = undefined


-- Cambiar el orden de los elementos
alReves :: [a] -> [a]
alReves = undefined


-- Detectar si una lista es palindromo
esPalindromo :: [a] -> Bool
esPalindromo = undefined


--
-- Estos son un poco mas complicados...
--
-- igual ayudan:
-- takeWhile, dropWhile


-- Eliminar duplicados consecutivos
-- [1, 1, 1, 3, 1] -> [1, 3, 1]
truncarDups :: [a] -> [a]
truncarDups = undefined


-- Comprimir consecutivos en formato run-length
-- ['a','a','a','b','c','c'] -> [(3, 'a'), (1, 'b'), (2, 'c')]
comprimir :: [a] -> [(Int, a)]
comprimir = undefined
