-- complex hyouji
import Data.Complex
complexGen x y = x :+ y

-- type def, types not created but alias is used
type Color = String
type Name = String

showInfos :: Name -> Color -> String
showInfos a b = "Name: "++a
    ++ ", Color: "++b
name::Name
name="timm"
color::Color
color="Blue"
forInfos = putStrLn $(showInfos name color)
revInfos = putStrLn $(showInfos color name)

-- data def, new types are created
-- new types *must* have Capital letter as first char
-- type constructors also *must* have Capital letter as first char
-- there is no other conditions in naming convention
data Year = YearConstr String   -- here defines a type year and a (String->Year)
                                -- constructor (function) YearConstr
data Getu = GetuConstr String
showDate :: Year -> Getu -> String
-- from def of showDate, a and b seems to be String or [Char] cause they
-- applies the operation (++), so in the front transforms String to Year by
-- YearConstr.
showDate (YearConstr a) (GetuConstr b) = "Year: "++a
    ++", Getu: "++b
year=(YearConstr)"2017"
getu=(GetuConstr)"ichigatu"
forDate = showDate year getu
-- revDate = showDate getu year -- this cannot compile pass

data Rad a = RadConstr {
    len :: a,
    radient :: a
} deriving (Show)

-- exclamation(!) means the very argument is unomittable
data Foo = Foo Int !Int deriving (Show)
first (Foo x _) = x
second (Foo _ y) = y
testFirst = first (Foo 1 undefined) -- this is going to be complained
testSecond = second (Foo undefined 1) -- Okay
