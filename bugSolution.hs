The solution utilizes a more efficient approach that avoids generating the entire infinite Fibonacci sequence.  Instead, it generates Fibonacci numbers only until the limit is reached.  We also improve code readability.

```haskell
import Data.List (takeWhile)

fib :: [Integer]
fib = 0 : 1 : zipWith (+) fib (tail fib)

sumEvenFibs :: Integer -> Integer
sumEvenFibs limit = sum $ takeWhile (<= limit) [x | x <- fib, even x]

main :: IO ()
main = do
  let result = sumEvenFibs 4000000
  print result
```