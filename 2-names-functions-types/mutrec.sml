(* 
	mutual recursion 
	sum the series 1 - 1/3 + 1/5 - 1/7 + 1/(4k+1) - 1/(4k-3)
*)

fun pos d = neg(d-2.0) + 1.0/d
and neg g = if d>0.0 then pos(d-2.0) - 1.0/d else 0.0;

(* try combining to one function! *)

fun sum(d, one) = 
	if d>0.0 then sum(2.0-d, ~one) + one/d else 0.0;

(* 
	GOTO statements
		setup state variables
		labels with ; terminated expressions and statements (? terminology ?)
*)

val n := 10; acc := 1;
A: if (n=0) then stop else GOTO B (* would "(n=0) andthen stop" work? would execution fall-through to the next label?*)
B: n := n-1
