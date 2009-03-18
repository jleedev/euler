module P3 where

sqr = ceiling . sqrt . fromIntegral

factor n = factor' n [] 2

factor' 1 l _ = l
factor' n l i | i > sqr n = n:l
              | otherwise = case n `divMod` i of
                            (q,0) -> factor' q (i:l) i
                            (_,_) -> factor' n l (i+1)

answer = head $ factor 600851475143
main = print answer
