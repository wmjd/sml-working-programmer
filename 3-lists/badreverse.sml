(* BAD REVERSE!! 
	this won't work for 2 reasons.
		1. unlike lisp, you can't cons onto an atom as the second arg, 1::1 is an 
		Error: operator and operand dont agree [circularity]
  			operator domain: 'Z * 'Z list
  			operand:         'Z * 'Z
		2. even if that did work, the nest would build in the car cell, it builds inside-out
			((a::b)::c) is not (a::(b::c))
*)

fun r(x::nil) = x
| 	r(x::xs) = r(xs)::x;
fun rev(nil) = nil
|	rev(x::xs) = r(x::xs)::nil;	

(* helper function was in form like this in a previous version of some code in this directory (when i was still a lisper :))
fun rev nil = nil
	| rev ls = (rev (tl ls))::(hd ls);
*)
