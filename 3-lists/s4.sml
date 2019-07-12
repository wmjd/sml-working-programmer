(* This takes up a lot of memory
fun len [] = 0
	| len (x::y) = 1+ len y;
Use iterative function isntead
*)
local
	fun iter (n, []) = n
		| iter (n, x::y) = iter (n+1, y)
in 
	fun len l = iter(0,l)
end ;

(* take i takes the first i elts of ls *)
fun take(ls, 0) = nil
	| take(ls, i) = (hd ls)::take(tl ls, i - 1) 

(* drop i drops the first i elts of ls *)
fun drop(ls, 0) = ls
	| drop(ls, i) = drop(tl ls, i - 1);

(* when length arg is too long list arg, uncaught exception Empty *)
