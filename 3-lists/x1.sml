(* Exercise 3.1 Write a version of maxl using null, hd and tl, instead of patternmatching. *)

fun null nil = true
	| null (a::b) = false (* what is difference between this and using _ on either side of ::, it was called the wildcard in the book *)

fun max ls = 
	if null(tl ls) then hd ls else 
	if (hd ls) > hd (tl ls) then max ((hd ls)::(tl (tl ls))) else max (tl ls);

fun maxi (ls, max) = 
	if null ls then max 
	else if (hd ls) > max then maxi(tl ls, hd ls) 
	else maxi(tl ls, max);
	 
