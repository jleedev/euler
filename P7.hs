module P7 where

primes = 2:3:filter isPrime candidates

candidates = do
    n <- [1..]
    [6*n-1,6*n+1]

isPrime n = all (\i -> n `mod` i /= 0) (takeWhile (\i -> i^2 <= n) primes)

main = print $ primes !! 10000
