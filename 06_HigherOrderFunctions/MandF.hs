quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort (filter (<=x) xs)
        biggerSorted = quicksort (filter (>x) xs)
    in smallerSorted ++ [x] ++ biggerSorted

-- the evaluation stops when the first adequate solution is found
largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000, 9999..])
    where p x = x `mod` 3829 == 0

-- Colatz sequence
chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
    | even n = n:chain (n `div` 2)
    | odd n  = n:chain (n*3 + 1)

-- Question
-- for all starting numbers between 1 and 100,
-- how many chains have a length greater than 15?
numLongChains :: Int
numLongChains = length (filter isLong (map chain [1..100]))
    where isLong xs = length xs > 15

