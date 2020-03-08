(* write the make change program cold! *)

fun change (coins, values, 0) = coins
|   change (coins, [], _) = []
|   change (coins, v::vs, amt) = 
	if amt < v then change (coins, vs, amt)
	else change (v::coins, v::vs, amt-v);

val v = [25, 10, 5, 1];

(* they didn't pass the accumulated coins list as an argument but defered evaluating cons until all recursive calls are done. of course mine is reversed and used an extra pattern (the middle one) *)
