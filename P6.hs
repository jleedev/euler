module P6 where

square n = n*n
sumSquares l = sum (map square l)
squareSum l = square (sum l)
answer = squareSum [1..100] - sumSquares [1..100] 
main = print answer
