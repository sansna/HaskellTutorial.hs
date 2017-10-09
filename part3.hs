safeHead x | null x = 0
    | otherwise = head x
safeTail x | null x = []
    | otherwise = tail x

func a | a == [] = 0
    | otherwise = (safeHead a) + func (safeTail a)

evenRet x | even x = x
    | otherwise = 0
funcEven a | a == [] = 0
    | otherwise = evenRet (safeHead a) + funcEven (safeTail a)

-- introduce a function : filter, which is to filter list/string through a
-- +given function one by one, and returns a list/string.
-- +it accepts 2 arguments, one is a function and the other is the list/string
-- +to be filtered.
funcEven2 a = sum (filter even a)
-- here foldl is a function which is defined as:
-- +foldl f z (x:xs) = foldl f (f z x) xs
funcEven3 a = foldl (+) 0 (filter even a)
-- map is a function that maps a function which applies to an *element*
-- to a function which applies to all elements of a *list*.

