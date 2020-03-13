(* write doubly recursive fib proc and acc version
this may help me write the allChange proc with acc *)

fun fib 0 = 1
|   fib 1 = 1
|   fib n = fib(n-1)+fib(n-2);

fun fb (0, acc) = acc+1
|   fb (1, acc) = acc+1
|   fb (n, acc) = fb(n-1, fb(n-2, acc));

fun printTest(a,b) = print(Int.toString(a) ^", "^ Int.toString(b));

fun test(a) = 
	if a < 0 then true 
	else if fib(a) <> fb(a, 0) then false
	else test(a-1)
		
