-- rewrite by using a lambda
numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))

-- lambda notation is cool
flip' :: (a -> b -> c) -> b -> a -> c
flip' f = \x y -> f y x

