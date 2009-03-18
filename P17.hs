import Char

digit n = words "zero one two three four five six seven eight nine" !! n

teen n = words "ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen" !! n

tens (n+2) = words "twenty thirty forty fifty sixty seventy eighty ninety" !! n

showNumber = map digitToInt . until ((>=4) . length) ('0':) . show

sayNumber n = let [a,b,c,d] = showNumber n in sayNumber' a b c d

sayNumber' 0 0 0 0 = ""
sayNumber' 0 0 0 d = digit d
sayNumber' 0 0 1 d = teen d
sayNumber' 0 0 c 0 = tens c
sayNumber' 0 0 c d = tens c ++ digit d
sayNumber' 0 b c d = digit b ++ "hundred" ++ sayNumber' 0 0 c d
sayNumber' a b c d = digit a ++ "thousand" ++ sayNumber' 0 b c d

main = print . sum $ do
    n <- [1..1000]
    return . length . sayNumber $ n
