Class intro
====

Classes can be used in context to specify element characters, like:

data Mylist a = Num a => MlConstr {x::a, y::a, z::a}

From the following picture, haskell have 16 classes:

1. Eq: All except IO, (->)

2. Show: All except IO, (->)

3. Read: All except IO, (->)

4. Ord: All except IO, IOError, (->)

5. Num: Int, Integer, Float, Double

6. Bounded: Int, Char, Bool, (), Ordering, tuples

7. Enum: (), Bool, Char, Ordering, Int, Integer, Float, Double

8. Real: Int, Integer, Float, Double

9. Fractional: Float, Double

10. Integral: Int, Integer

11. RealFrac: Float, Double

12. Floating: Float, Double

13. Monad: IO, [], Maybe

14. MonadPlus: IO, [], Maybe

15. RealFloat: Float, Double

16. Functor: IO, [], Maybe

