caseTest :: [a] -> Int
caseTest a = case a of [] -> 0
                       [x] -> 1
                       (x:_) -> 2
