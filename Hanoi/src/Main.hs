module Main where

type Poste = String
type Movimiento = (Poste, Poste)


--- Para mover n discos apilados de pequeño a grande del Poste a -> b
--- con c de almacenaje temporal
--- 1. mover n − 1 discos de a -> c con b de almacenaje temporal
--- 2. mover the top disc from a to b
--- 3. mover n − 1 discs from c to b using a as temporary storage.

hanoi :: Integer -> Poste -> Poste -> Poste -> [Movimiento]
hanoi = undefined

main :: IO ()
main = let
    tests = [ hanoi 2 "a" "b" "c" == [("a","c"), ("a","b"), ("c","b")]
            , hanoi 5 "a" "b" "c" == fiveDiscSolution
            , length (hanoi 15 "a" "b" "c") == 32767
            ]
    in if all id tests
    then
        print "Correcto!"
    else
        print "No es correcto."

fiveDiscSolution = [("a","b"),("a","c"),("b","c"),("a","b"),("c","a"),("c","b"),("a","b"),("a","c"),("b","c"),("b","a"),("c","a"),("b","c"),("a","b"),("a","c"),("b","c"),("a","b"),("c","a"),("c","b"),("a","b"),("c","a"),("b","c"),("b","a"),("c","a"),("c","b"),("a","b"),("a","c"),("b","c"),("a","b"),("c","a"),("c","b"),("a","b")]
 
