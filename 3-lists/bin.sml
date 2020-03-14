(* the head of the list is the least significant bit
 * essentially, the number is stored in reverse in list*)

fun bincarry (0, ps) = ps
|   bincarry (1, []) = [1]
|   bincarry (1, p::ps) = (1-p)::bincarry(p, ps);

(* try to write binsum with bincarry 
 * takes two lists
 


fun bsum ([], l) = l
|   bsum (l, []) = l
|   bsum (a::az, b) = a
		bsum(az, bincarry(a,b));  

*)

(* their way: *)

fun binsum (c, [], l) = bincarry(c, l)
|   binsum (c, l, []) = bincarry(c, l)
|   binsum (c, a::az, b::bz) = 
	((a+b+c) mod 2)::binsum((a+b+c) div 2, az, bz);	

fun binprod ([], _) = []
|   binprod (0::ns, ms) = 0::binprod(ns, ms) 
|   binprod (1::ns, ms) = binsum(0, ms, 0::binprod(ns, ms))
