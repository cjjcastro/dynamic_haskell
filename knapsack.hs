mkList f = map f [0..]

mkTable f = mkList (\i -> mkList (\j -> f i j))

knapsackTable = mkTable f
    where f 0 _ = 0
          f _ 0 = 0
          f i j | ws !! i > j = knapsackTable !! (i-1) !! j
                | otherwise = max (knapsackTable !! (i-1) !! (j-(ws !! i)) + vs !! i) (knapsackTable !! (i-1) !! j)

-- weight value pairs; item i has weight ws!!i and value vs!!i
ws  = [0,1,2, 5, 6, 7] -- weights
vs  = [0,1,7,11,21,31] -- values
