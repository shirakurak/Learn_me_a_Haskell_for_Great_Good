doubleMe x = x + x

doubleUs x y = x*2 + y*2

-- call function from other function
doubleUs2 x y = doubleMe x + doubleMe y

-- if statement in Haskell is an expression
doubleSmallNumber x = if x > 100
                        then x
                        else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

-- definition/name (don't have take any paremeters)
cananO'Brien = "It's a-me, Canan O'Brien!"