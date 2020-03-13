val roman = [1000,500,100,50,10,5,1];


fun allChange (cs, cv, 0) = [cs]
|   allChange (cs, [], amt) = []
|   allChange (cs, c::cv, amt) =
	if amt<0 then []
		else allChange(c::cs, c::cv, amt-c) 
		@ allChange(cs, cv, amt) ;     

(* call like:	allChange([], roman, 10);	*)

(* try to write doubly rec proc this using acc, as in fib.sml for fib *)

fun aC (cs, cv, 0, acc) = [cs] @ acc
|   aC (cs, [], _, acc) = acc
|   aC (cs, c::cv, amt, acc) = 
		if amt<0 then acc
		else aC(c::cs, c::cv, amt-c,
			aC(cs, cv, amt, acc));

(* for testing, calling with less to type *)
fun a x = allChange([], roman, x);
fun b x = aC([], roman, x, []);



