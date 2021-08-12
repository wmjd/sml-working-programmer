(*Exercise 3.4 Write a function nth(l,n) to return the nth element of l (where
the head is element 0).*)

fun nth(ls,0) = hd ls
|   nth(ls,n) = nth(tl ls, n - 1); 

fun getnth ((h::_), 0) = h
|   getnth ((_::t), n) = getnth (t, n-1);

(*returning to this exercise*)

fun mth([], _) = []
|	mth(x::xs, i) = if i = 0 then x else mth(xs, i-1);

fun jth (x::xs, 0) = x
|	jth (_::xs, j) = jth(xs, j-1);
