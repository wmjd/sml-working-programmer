(*Exercise 3.4 Write a function nth(l,n) to return the nth element of l (where
the head is element 0).*)

fun nth(ls,0) = hd ls
	| nth(ls,n) = nth(tl ls, n - 1); 
