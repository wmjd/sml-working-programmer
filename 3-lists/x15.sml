(* binary arith *)

fun bincarry (0, ps) = ps
|	bincarry (1, []) = [1]
|	bincarry (1, p::ps) = (1-p)::bincarry(p,ps);

fun binsum (c, [], qs) = bincarry (c,qs)
|	binsum (c, ps, []) = bincarry (c,ps)
|	binsum (c, p::ps, q::qs) = 
		((c+p+q) mod 2) :: binsum((c+p+q) div 2, ps, qs);

fun binpod ([], _) = []
|	binpod (0::ps, qs) = 0::binpod(ps,qs)
|	binpod (1::ps, qs) = binsum(0, qs, 0::binpod(ps,qs));

(* exercise 3.15 write funs to compute bin sum and prod of a list of bools! *)

fun boolToBin nil = nil
|	boolToBin (true::bs) = 1::boolToBin(bs)
|	boolToBin (false::bs) = 0::boolToBin(bs);
fun binToBool nil = nil
|	binToBool (1::bs) = true::binToBool(bs)
|	binToBool (0::bs) = false::binToBool(bs);
