fun gcd(a,b) = 
	if (a=0) then b else gcd(b mod a, a);

fun power(x,k) = (* only works for k >= 1 *)
	if (k=1) then x else power(x*x, k-1);
fun pow(x,k) = 
	if (k=0) then 1 else (x*pow(x,k-1));
fun powfast(x,k) =
	if (k=0) then 1 else 
		if (k mod 2 = 0) then (powfast(x*x, k div 2)) else x*powfast(x*x, k div 2);
(* when k is even, x to the k is just x to half of k and square the whole thing
the consequent clause is just an expr for x*power(x, n-1) because k div 2 truncates and is the same as k-1 div 2 (only when odd!) *)

fun nextfib(prev,cur) = (cur, prev+cur);
fun fibpair n = if (n=1) then (0,1) else nextfib(fibpair(n-1));
fun fib n = if (n=2) then 2 else
			if (n=1) then 1 else
			if (n=0) then 0 else 
			fib(n-1) + fib(n-2);
