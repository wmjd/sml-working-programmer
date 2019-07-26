(* datatype bool = false | true *)
fun disjunction (false, false) = false
|	disjunction (_,_) = true;

fun conjunction (true, true) = true
|	conjunction (_,_) = false;
