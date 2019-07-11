fun len [] = 0
	| len (x::t) = 1+len t

fun fact 0 = 1
	| fact n = n*fact(n-1);

fun facti (0, acc) = acc
	| facti (n, acc) = facti(n-1, n*acc);

fun fct n =
	let fun iter (0, acc) = acc
		| iter(n, acc) = iter(n-1, n*acc)
	in iter(n, 1)
	end;

fun fctt n = 
	let val i = facti (* this was a fun not a var. got, Error: can't find function arguments in clause *)
	in i(n,1) end;
