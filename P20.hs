(!) n = product [1..n]
f x | x < 10 = x
    | otherwise = let (r,d) = divMod x 10
                      in d + f r
main = (print . f) (100!)
