-- arith: 3+2*6/3 <=> 3 + ((2*6)/3)
-- ||, &&, ==, /= means for or, and, equals, not equals
-- x^n, x**y for exponentials
-- list op: ++ concat, : prepend as list elem, .. smart [10,9..1] or [9,7..1]
-- strings op: 'a' ++ 'b' == "ab", []="", "ab"=['a','b'], 'a':"b"="ab"='a':'b':[]
-- tuples op: fst(a,b)=a snd(a,b)=b. However fst(a,b,c) this is error
-- Note the if then else notation cannot omit else or then
absolute:: (Ord a, Num a) => a -> a
absolute x = if x > 0 then x else -x
