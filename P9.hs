module P9 where

import Control.Monad

tsst = head $ do
    a <- [1..1000]
    b <- [1..1000]
    let c = 1000 - a - b
    guard (a^2 + b^2 == c^2)
    return (a*b*c)

main = print tsst
