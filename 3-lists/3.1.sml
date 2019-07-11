(* Lists in sml ARE NOT lists in lisp!
"Weakly typed langs rep lists by pairing, (3, (5, (9, "nil")))."
Ok but you seem to construct them by consing vals of a type to nil....... the only diff i see is that the type is consistent, but there is still a recursive pairing to nil 

Scheme, (cons 3 (cons 2 (cons 1 'nil))) ]=> (3 2 1) 
SML, 3 :: 2 :: 1 :: nil; => [3,2,1]

*)

fun upto (m,n) = (* build list of ints from m to n: [m, m+1, ... , n]  *)
	if m>n then nil
	else m :: upto(m+1, n);

(* Lists are structured values (like tuples). A function on lists/tups can be written with a pattern for arg showing structure and naming components *)
fun prod3 [i,j,k] : int = i*j*k; 
(* prod3 only works for lists of 3 ints, more generally: *)
fun prod [] = 1
	| prod (n::ns) = n * (prod ns);
