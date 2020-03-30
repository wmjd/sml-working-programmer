(* declare the function +:= such that +:= Id E
 * has the same effect as Id := !Id + E, for int E
 *)

infix +:=
fun a +:= b = 
	a := !a + !b;
