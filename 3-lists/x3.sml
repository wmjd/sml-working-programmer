(* what to take and drop do when i > len and also when i < 0 *)

fun take ([],_) = []
|	take (x::xs, i) = if i > 0 then x::take(xs,i-1) else []

fun drop ([],_) = []
|	drop (x::xs, i) = if i > 0 then drop (xs, i-1) else x::xs;


(* 
	when i > len then take reaches the first pattern and the result is as if i = len

	drop also reaches the first pattern but no values were built-up so we get []

	when i < 0 and the list is not empty we reach the else immediately in drop
	if the list is empty we reach the first pattern. 
	In both cases we get original list back.

	take on a nonempty list when i < 0 also reaches else immediately resulting in [] 
*)
