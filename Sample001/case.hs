-- syntax for case expression
-- case expresstion of pattern -> result
--                     pattern -> result
head2 :: [a] -> a
head2 xs = case xs of [] -> error "No head for empty lists!"
                      (x:_) -> x

-- case expressions can be used pretty much anywhere(error...)
-- describeList :: [a] -> String
-- describeList xs = "The list is " ++ case xs of [] -> "empty."
--                                              [x] -> "a singleton list."
--                                              xs  -> "a longer list."

describeList' :: [a] -> String
describeList' xs = "The list is " ++ what xs  
    where what [] = "empty."
          what [x] = "a singleton list."
          what xs = "a longer list."