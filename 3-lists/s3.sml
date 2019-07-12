fun prod [] = 1
	| prod (n::ls) = n * prod ls;

(* find max element in list *)
fun max [m] = m
	| max (a::b::c) = max ((if a>b then a else b) ::c)

(* upto again

don't get why this wont work with pattern matchinbg...

fun upto(n,n) = n::nil
	| upto(n,m) = n::upto(n+1, m); 
*)
fun upto(i,j) = if i>j then nil else i::upto(i+1,j);
fun fact' n = prod(upto(1,n)); (* this is awful and doesn't allow reasoning about the program! *)

fun null nil = true
	| null (_::_) = false; 
(* null is polymorphic it works on lists of any type of elements! *)


