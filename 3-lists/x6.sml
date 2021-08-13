(* if [x] is replaced with x then there will be a type error when applying the function. *)

fun nrev [] = []
|	nrev (x::xs) = (nrev xs) @ [x]
