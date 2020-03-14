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

(* i'm not supposed to just transform the values
 * and i'm not sure why u started to do that
 * rewrite underlying functions *)

infix xor;
fun p xor q = (p orelse q) andalso not(p andalso q); 

fun mod2(q,p,c) =
	(q andalso p andalso c) orelse
	(q andalso (not p) andalso (not c)) orelse
	((not q) andalso (not p) andalso c) orelse
	((not q) andalso p andalso (not c));

fun div2(q,p,c) = 
	(c andalso p) orelse
	(p andalso q) orelse
	(c andalso q);

fun boolcarry (false, ps) = ps
|	boolcarry (true, []) = [true]
|	boolcarry (true, p::ps) = (not p)::boolcarry(p,ps);

fun boolsum (c, [], qs) = boolcarry (c,qs)
|	boolsum (c, ps, []) = boolcarry (c,ps)
|	boolsum (c, p::ps, q::qs) =
		mod2(q,p,c)::boolsum(div2(q,p,c), ps, qs);

fun boolpod ([], _) = []
|	boolpod (false::ps, qs) = false::boolpod(ps,qs)
|	boolpod (true::ps, qs) = boolsum(false, qs, false::boolpod(ps,qs));


