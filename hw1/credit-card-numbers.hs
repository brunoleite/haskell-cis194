toDigits :: Integer -> [Integer]
toDigitsReverse :: Integer -> [Integer]
doubleEveryOther :: [Integer] -> [Integer]

toDigits n
  | n <= 0    = []
  | n >= 1000 = n `div` 1000:toDigits(n `mod` 1000)
  | n >= 100  = n `div` 100:toDigits(n `mod` 100)
  | n >= 10   = n `div` 10:toDigits(n `mod` 10)
  | otherwise = [n]

toDigitsReverse n = reverse (toDigits(n))

doubleEveryOther [] = []
doubleEveryOther (x:[]) = [x]
doubleEveryOther (x:y:zs) = (x * 2) : y : doubleEveryOther zs