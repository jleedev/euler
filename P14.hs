module P14 where

import Control.Arrow
import List

collatz = collatz' 0
    where collatz' i 1 = i
          collatz' i n | even n    = collatz' (i+1) (n `div` 2)
                       | otherwise = collatz' (i+1) (3*n + 1)

a = map (collatz &&& id) [1..999999]
b = sort a
answer = snd $ last b

main = print answer
