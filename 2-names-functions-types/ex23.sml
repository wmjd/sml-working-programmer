(* Pn = 1 + sum of Pk from k=1 to n-1. P1 = 1 *)
fun p 1 = 1 
	| p n = 1 + p(n-1);

