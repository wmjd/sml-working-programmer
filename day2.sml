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
	 

