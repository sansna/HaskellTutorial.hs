calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis set = [bmi x y | (x,y) <- set]
    where bmi x y = x / (y ^ 2)
