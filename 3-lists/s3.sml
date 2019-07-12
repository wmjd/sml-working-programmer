fun prod [] = 1
	| prod (n::ls) = n * prod ls;

(* find max element in list *)
fun max [m] = m
	| max (a::b::c) = max ((if a>b then a else b) ::c)
