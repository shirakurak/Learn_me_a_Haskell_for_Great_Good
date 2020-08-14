cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^2
    in  sideArea + 2 * topArea

-- error...
calsBmis2 :: (RealFloat a) => [(a, a)] -> [a]
calsBmis2 xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi >= 25.0]
