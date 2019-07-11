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

(* square root procedures *)
(* make a guess and average it with x/guess *)
fun sqrt(x : real, guess : real) = 
	if (abs(guess*guess-x) <= 0.0001) then guess 
	else sqrt(x, (guess+(x/guess))/2.0);	

(* code goes here for introot  *)

(*computes gcd twice*)
fun fract(n,d) = (n div gcd(n,d), d div gcd(n,d)); 
(* local declarations *)
fun fraction(n,d) =
	let val com = gcd(n,d)
	in (n div com, d div com) end;
(* form of let expression,
	let D in E end 
	where D is decl'r'n eval'd first
	where E *)





(* just declaring some vals *)
val one = "whatever";
val two = "blah blah";
val thr = "asdasd";
(* transforms to simultaneous declr'n *)
val one = "whatever"
and two = "blah blah"
and thr = "asdasd";
(* can also do strange things like this interactive session shows:
- val one = 1;
val one = 1 : int
- val two = 2;
val two = 2 : int
- val one = two and two = one;
val one = 2 : int
val two = 1 : int
*)

