(* if a functional fib looks as follows *)

fun fib 0 = 0
|   fib 1 = 1
|   fib n = fib(n-1) + fib(n-2);

(* an imperative fib can be *)

fun ifib 0 = 0
|   ifib n =
	let 
		val a = ref 0 and b = ref 1 and i = ref 1 and t = ref 0
	in (
		while !i < n do (
			t := !a;
			a := !b;
			b := !t + !b;
			i := !i + 1
		) ;
		!b			
	) end;

exception TestFailure
fun test 1 = fib 1 = ifib 1
|   test n = 
		if (fib n = ifib n) then test (n-1)
		else raise TestFailure;
	
