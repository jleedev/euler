module P12 where

import Control.Monad

triangles = scanl1 (+) [1..]

sqr = floor . sqrt . fromIntegral

divisors 1 = 1
divisors n = 2 + 2 * length [d | d <- [2..sqr n], n `mod` d == 0]

answer = head $ do
    t <- triangles
    guard $ divisors t > 500
    return t
main = print answer
