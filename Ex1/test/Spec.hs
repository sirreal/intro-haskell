import Lib
import System.Exit (ExitCode(..), exitWith)

import Testing

-- Exercise 1 -----------------------------------------

testLastDigit :: (Integer, Integer) -> Bool
testLastDigit (n, d) = lastDigit n == d

testDropLastDigit :: (Integer, Integer) -> Bool
testDropLastDigit (n, d) = dropLastDigit n == d

testToRevDigits :: (Integer, [Integer]) -> Bool
testToRevDigits (n, d) = toRevDigits n == d

testDoubleEveryOther :: ([Integer], [Integer]) -> Bool
testDoubleEveryOther (n, d) = doubleEveryOther n == d

testSumDigits :: ([Integer], Integer) -> Bool
testSumDigits (n, d) = sumDigits n == d

testLuhn :: (Integer, Bool) -> Bool
testLuhn (n, d) = luhn n == d

ex1Tests :: [Test]
ex1Tests = [ Test "lastDigit test" testLastDigit
             [(123, 3), (1234, 4), (5, 5), (10, 0), (0, 0)]
           , Test "dropLastDigit test" testDropLastDigit
             [(123, 12), (1234, 123), (5, 0), (10, 1), (0,0)]
           , Test "toRevDigits test" testToRevDigits
             [(123, [3,2,1]), (1, [1])]
           , Test "doubleEveryOther test" testDoubleEveryOther
             [ ([1, 2, 3, 4, 5, 6], [2, 2, 6, 4, 10, 6])
             , ([1], [1])
             , ([], [])
             , ([1, 2], [2, 2])
             ]
           , Test "sumDigits test" testSumDigits
             [ ([1, 2, 3], 6)
             , ([], 0)
             , ([10], 1)
             , ([1, 10, 100, 1000], 4)
             ]
           , Test "luhn test" testLuhn
             [ (5594589764218858, True)
             , (1234567898765432, False)
             ]
           ]

main = do
    let results = runTests ex1Tests
    print results
    let status = if null results
                    then ExitSuccess
                    else ExitFailure 1
    exitWith status

