(* if-then-else conditional only evaluates one branch *)
fun sign(x) =
	if x>0 then 1
	else if x<0 then ~1
	else 0;

(* orelse, andalso is short circuit, evaluates second part only if necessary *)
fun isLower c = 
	#"a" <= c andalso c <= #"z"; 

(* exercise 2.5 
	let d be an int, m a string
	write boolean expr that is true just when d, m form a valid date
	ie: 25, "October". no leap.
*)

fun isDate(d : int, m : string) = 
	if m = "January" orelse m = "March"  orelse m = "May" orelse m = "July" orelse m = "August" orelse m = "October" orelse m = "December"
	then if d>=0 andalso d<=31 then true else false
	else 
		if m = "April" orelse m = "June" orelse m = "September" orelse m = "November" 
		then if d>=0 andalso d<=30 then true else false
		else
			if m = "February" andalso (d >= 0 andalso d <= 28) then true else false ;
	 
fun vecAdd((x1, x2),(y1,y2)) = (x1+y1,x2+y2); 
fun fact n = if n = 0 then 1 else n*fact(n-1);
fun facti(n,i) = if n = 0 then i else facti(n-1, n*i);

(*	these are not functions. call-by-value would then evaluate both expressions which is not desirable for conds. 
	E1 andalso E2; <=> if E1 then E2 else false;
	E1 orelse E2; <=> if E1 then true else E2;
*)

fun even n = n mod 2 = 0;
fun isPowerOf2 n = 
	if n = 1 then true (* remember, could replace the if-then-else with an orelse between juxtaposed the expressions *)
	else even n andalso isPowerOf2 (n div 2);

fun isPowerOf(p, n) = 
	(n = 1) orelse ((n mod p = 0) andalso isPowerOf(p, n div p));


