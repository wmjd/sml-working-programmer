(* Write simultaneous assignment function: (a ref) list x a list -> unit *)

exception ListLengthsNotEqual
fun sass (_, []) = raise ListLengthsNotEqual
|   sass ([], _) = raise ListLengthsNotEqual
|   sass ([r], [v]) =
		r := v
|   sass (r::rs, v::vs) = (
		r := v ; 
		sass(rs, vs)		
	); 
