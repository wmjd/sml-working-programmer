(* try to write append cold to warm-up! *)

fun append (x::xs, l) = x::append(xs, l)  
|   append (_, l) = l;
