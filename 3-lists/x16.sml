(* the head of the list is the least significant bit
 * essentially, the number is stored in reverse in list*)

fun bincarry (0, ps) = ps
|   bincarry (1, []) = [1]
|   bincarry (1, p::ps) = (1-p)::bincarry(p, ps);


fun binsum (c, [], l) = bincarry(c, l)
|   binsum (c, l, []) = bincarry(c, l)
|   binsum (c, a::az, b::bz) = 
	((a+b+c) mod 2)::binsum((a+b+c) div 2, az, bz);	

fun binprod ([], _) = []
|   binprod (0::ns, ms) = 0::binprod(ns, ms) 
|   binprod (1::ns, ms) = binsum(0, ms, 0::binprod(ns, ms))


(*3.16 Write function to divide one bin numeral by another*)

(* don't borrow from non-positive *)
fun borrow (0, bin) = bin
|   borrow (1, 1::bin) = 0::bin
|   borrow (1, 0::bin) = 1::borrow(1, bin);

(* don't sub greater from lesser *)
fun binsub (b, l, _) = l
|   binsub (b, x::xs, y::ys) = binsub


