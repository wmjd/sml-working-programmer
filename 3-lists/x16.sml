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

(*fun binsub (0, [], qs) = bincarry*)
(* 4/2 is 2 subtracted n times from 4. you need to accumulate n
*)
fun d(a,b) = 
	if a<b then 0
	else 1+d(a-b,b);  

(*
fun binsub (xs, ys) = 
	let fun neg [] = []
		|	neg (x::xs) = ~x::neg(xs)
	in binsum(0, xs, neg ys) end;

fun bindiv ([], _) = []
|	bindiv (0::ps, qs) = 0::binprod(ps,qs)
|	bindiv (1::ps, qs) = binsub(qs, 0::binprod(ps,qs));
*)
