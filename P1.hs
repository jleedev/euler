module P1 where

import Control.Monad

main = print . sum $ do
    i <- [1..999]
    guard $ i `mod` 3 == 0 || i `mod` 5 == 0
    return i
