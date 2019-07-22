(* nothing much came of this, just practice *)

(* binary arith *)

fun bincarry (0, ps) = ps
|	bincarry (1, []) = [1]
|	bincarry (1, p::ps) = (1-p)::bincarry(p,ps);

fun binsum (c, [], qs) = bincarry (c,qs)
|	binsum (c, ps, []) = bincarry (c,ps)
|	binsum (c, p::ps, q::qs) = 
		((c+p+q) mod 2) :: binsum((c+p+q) div 2, ps, qs);

fun binprod ([], _) = []
|	binprod (0::ps, qs) = 0::binprod(ps,qs)
|	binprod (1::ps, qs) = binsum(0, qs, 0::binprod(ps,qs));

(* division is repeated subtr ignore remainder*)
fun d(a,b) = (* this is just int divisioni, convert for this form after *)
	if a<b then 0
	else 1+d(a-b,b);  
(* write special comparison and subtraction operators for this bin formay. already have addition *)
fun lessthan (a,b) = toDec(a) < toDec(b);
(* if you just convert everything, you don't need special arith operators like binsum..... 
   instead, just convert, add/sub/mul/div, convert back
*)
fun toDec [] = 0
(*|	toDec (1::ns) = 1+2*toDec(ns)
|	toDec (0::ns) = 2*toDec(ns);*)
|	toDec (n::ns) = (n mod 2) + 2*toDec(ns);
fun toBin 0 = []
(*|	toBin n = if ((n mod 2) = 0) then (0::toBin(n div 2)) else (1::toBin((n-1) div 2));*)
|	toBin n = (n mod 2)::toBin(n div 2);



(* can't really do signed numbers because the binary representation is of arbitrary length; wouldn't have a good way of marking negs? *)

(*
fun binsub (xs, ys) = 
	let fun neg [] = []
		|	neg (x::xs) = ~x::neg(xs)
	in binsum(0, xs, neg ys) end;

fun bindiv ([], _) = []
|	bindiv (0::ps, qs) = 0::binprod(ps,qs)
|	bindiv (1::ps, qs) = binsub(qs, 0::binprod(ps,qs));
*)
