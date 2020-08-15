maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"   -- crash!
maximum' [x] = x                              -- edge condition
maximum' (x:xs)                               -- split a list into a head and a tail
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs

-- rewrite clearly by using max
maximum'2 :: (Ord a) => a -> a
maximum'2 [] = error "maximum of empty list"
maximum'2 [x] = x
maximum'2 (x:xs) = max x (maximum'2 xs)

