(* 
	mutual recursion 
	sum the series 1 - 1/3 + 1/5 - 1/7 + 1/(4k+1) - 1/(4k-3)
*)

fun pos d = neg(d-2.0) + 1.0/d
and neg d = if d>0.0 then pos(d-2.0) - 1.0/d else 0.0;

(* try combining to one function! *)

fun sum(d, one) = 
	if d>0.0 then sum(d-2.0, ~one) + one/d else 0.0;

(* 
GOTO statements
	setup state variables
	labels with ; terminated expressions and statements (? terminology ?)

convert,
	var x:=0; y:= 0; z:=0;
	F: x:= x+1; goto G
	G: if y<z then goto F else (y := x+y; goto H)
	H: if z>0 then (z := z-x; goto F) else stop
 *)

fun F(x,y,z) = G(x+1,y,x)
and G(x,y,z) = if y<z then F(x,y,z) else H(x,y+x,z)
and H(x,y,z) = if z>0 then F(x,y,z-x) else(x,y,z);
