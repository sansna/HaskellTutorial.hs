-- bmiTell kilo meter
bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi < 18.5 = "You are underwight."
    | bmi < normal = "Supposed normal."
    | bmi < 30.0 = "Fat, please lose some fat."
    | otherwise = "You overfat."
    where bmi = weight / (height ^ 2)
          normal = 24.0
          (skinny, fat) = (18.5, 30.0)
