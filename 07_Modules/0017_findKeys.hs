import qualified Data.Map as Map

-- association list(dictionary)
phoneBook = [("betty", "555-2938"),("bonnie", "452-2928"),("patsy", "493-2928"),("lucille", "205-2928"),("wendy", "939-8282"),("penny", "853-2492")]

-- look up some value given a key
findKey :: (Eq k) => k -> [(k,v)] -> v
findKey key xs = snd . head . filter (\(k,v) -> key == k) $ xs

-- because not finding the key
findKey2 :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey2 key [] = Nothing
findKey2 key ((k,v):xs) = if key == k
                            then Just v
                            else findKey2 key xs

-- implemented as a fold
findKey3 :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey3 key = foldr (\(k,v) acc -> if key == k then Just v else acc) Nothing

