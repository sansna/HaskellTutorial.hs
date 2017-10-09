main = do
    putStrLn "what is your name?"
    name<-getLine
    putStrLn $ name ++ "! This is a very nice name."

-- the following function type is
-- :t f
-- f :: Num a => a -> a -> a
-- which means given 2 var of any type which can do the opeartion
-- (+) and (*), f will return a value of exactly the same type.
f x y = x * x + y * y


