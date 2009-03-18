module P10 where

import P7 (primes)

main = print . sum . takeWhile (<2000000) $ primes
