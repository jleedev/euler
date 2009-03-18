fibs = 0:1:zipWith (+) fibs (tail fibs)
digits n = length (show n)
answer = head [n | (f,n) <- zip fibs [0..], digits f == 1000]
main = print answer
