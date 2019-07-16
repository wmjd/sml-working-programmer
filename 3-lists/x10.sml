(*Exercise 3.10 Is rev(rtake(l,i,[])) more efficient than take(l,i)? Consider all the costs involved*)

(*takes the first i elts from list*)
fun take ([], i) = []
|	take (x::xs, i) = if i>0 
						then x::take(xs, i-1) 
						else [];

fun rtake ([], i, acc) = []
|	rtake (x::xs, 0, acc) = acc
|	rtake (x::xs, i, acc) = rtake (xs, i-1, x::acc) ;

fun rev ls = 
	let
		fun r (nil, acc) = acc
		|	r (x::xs, acc) = r (xs, x::acc) 	
	in
		r (ls, nil)
	end ;



