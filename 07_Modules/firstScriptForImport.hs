import Data.List

numUniques :: (Eq a) => [a] -> Int
-- equivalent to \xs -> lenght (nub xs)
numUniques = length . nub
