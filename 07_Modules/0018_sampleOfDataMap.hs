import qualified Data.Map as Map

-- We can implement fromList by using the empty map, insert, fold
formList' :: (Ord k) => [(k,v)] -> Map.Map k v
formList' = foldr (\(k,v) acc -> Map.insert k v acc) Map.empty