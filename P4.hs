module P4 where

import Control.Monad
import List

palindrome :: Integer -> Bool
palindrome n = show n == reverse (show n)

tsst = do
    a <- [100..999]
    b <- [a..999]
    let p = a*b
    guard $ palindrome p
    return p

main = print . maximum . sort $ tsst
