module P15 where

factorial n = product [1..n]

answer = factorial 40 `div` (factorial 20 * factorial 20)

main = print answer
