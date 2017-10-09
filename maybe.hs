-- to get function fromJust/fromMaybe from module Data.Maybe
--
-- Note that fromJust and fromMaybe are not in opposite position
-- fromJust is to de-Just from Maybe values;
-- however, fromMaybe is to convert Maybe values to normal values or
-- a default value specified as argument 1.

import Data.Maybe
-- definition: data Maybe a = Nothing | Just a
underTen :: (Num a, Ord a)=> a -> Maybe a
underTen a | a < 10 = Just a
    | otherwise = Nothing

fetchJust a = fromJust (underTen a)
fetchMaybe a = fromMaybe (-1) (underTen a)
