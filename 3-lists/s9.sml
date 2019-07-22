(* matrix transpose
   1 2 3    1 4 7 |	 a b c    a d
   4 5 6 => 2 6 8 |  d e f => b c
   7 8 9    3 6 9 |           c f	*)

val m = [[1,2,3], 
		 [7,8,9]];
val n = (hd m) :: [4,5,6] :: (hd (tl m)) :: nil;
fun heads nil = nil
|	heads (row::rows) = (hd row)::(heads rows);
fun tails nil = nil
|	tails (row::rows) = (tl row)::(tails rows);
fun t nil = nil
|	t (nil::_) = nil
|	t m = (heads m) :: t(tails m);

