import Test.HUnit (Assertion, (@=?), runTestTT, Test(..), Counts(..))
import System.Exit (ExitCode(..), exitWith)

import Lib


exitProperly :: IO Counts -> IO ()
exitProperly m = do
  counts <- m
  exitWith $ if failures counts /= 0 || errors counts /= 0
                then ExitFailure 1
                else ExitSuccess

testCase :: String -> Assertion -> Test
testCase label assertion = TestLabel label (TestCase assertion)

test_ultimo :: Assertion
test_ultimo = 3 @=? ultimo [1, 2, 3]

test_penUltimo :: Assertion
test_penUltimo = 2 @=? penUltimo [1, 2, 3]

test_firstElemento :: Assertion
test_firstElemento = 'a' @=? nthElemento "abc" 0

test_thirdElemento :: Assertion
test_thirdElemento = 'c' @=? nthElemento "abcd" 2

test_cuentaElementos :: Assertion
test_cuentaElementos = 3 @=? cuentaElementos [1, 1, 1]

test_alReves :: Assertion
test_alReves = [3, 2, 1] @=? alReves [1, 2, 3]

test_esPalindromo :: Assertion
test_esPalindromo = True @=? esPalindromo "aba"

test_noEsPalindromo :: Assertion
test_noEsPalindromo = False @=? esPalindromo "abc"

test_truncarDups :: Assertion
test_truncarDups = "abcd" @=? truncarDups "aaabccd"

test_comprimir :: Assertion
test_comprimir = [(3,'a'),(1,'b'),(2,'c'),(1,'d')] @=? comprimir "aaabccd"


tests :: [Test]
tests =
  [ testCase "ultimo" test_ultimo
  , testCase "penUltimo" test_penUltimo
  , testCase "firstElemento" test_firstElemento
  , testCase "thirdElemento" test_thirdElemento
  , testCase "cuentaElementos" test_cuentaElementos
  , testCase "alReves" test_alReves
  , testCase "esPalindromo" test_esPalindromo
  , testCase "noEsPalindromo" test_noEsPalindromo
  , testCase "truncarDups" test_truncarDups
  , testCase "comprimir" test_comprimir
  ]

main :: IO ()
main = exitProperly (runTestTT (TestList tests))
