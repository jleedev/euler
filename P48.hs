modpow b 0 m = 1
modpow b e m = (mod ((modpow b' e' m) * if i==1 then b else 1) m)
               where (e',i) = divMod e 2
                     b' = (mod (b*b) m)

answer = ((`mod` (10^10)) . sum) [modpow x x (10^10) | x <- [1..1000]]
