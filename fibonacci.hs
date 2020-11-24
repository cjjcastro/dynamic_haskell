fibs :: [Int]
fibs = 0:1:zipWith (+) fibs (tail fibs)

fibs2 :: Int -> Integer
fibs2 = (map fib' [0..] !!)
    where fib' 0 = 0
          fib' 1 = 1
          fib' n = fibs2 (n - 1) + fibs2 (n - 2)