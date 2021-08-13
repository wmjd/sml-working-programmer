(* exercise 3.15 write funs to compute bin sum and prod of a list of bools  

c q p	L R
0 0 0	0 0
0 0 1	1 0
0 1 0	1 0
1 0 0	0 1
1 0 1	1 0
1 1 0	0 1
1 1 1	1 1

*)


structure Bin =
	struct
	fun bcarry (false, ps) = ps
	|	bcarry (true, []) = [true]
	|	bcarry (true, p::ps) = (not p)::bcarry(p,ps);

	fun bsum (c, [], qs) = bcarry (c,qs)
	|	bsum (c, ps, []) = bcarry (c,ps)
	|	bsum (c, p::ps, q::qs) = 
			let fun twoOrMore (c,p,q) =
				(c andalso p) orelse (c andalso q) orelse (p andalso q)
			in
				(c=p=q) :: bsum(twoOrMore(c,p,q), ps, qs)
			end;

	fun bpod ([], _) = []
	|	bpod (false::ps, qs) = false::bpod(ps,qs)
	|	bpod (true::ps, qs) = bsum(false, qs, false::bpod(ps,qs));
	end;

