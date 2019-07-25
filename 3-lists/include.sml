infix mem;
fun x mem nil = false
|	x mem (y::ys) = (x=y) orelse (x mem ys) 
(*	if x=y then true
	else x mem ys; *)

