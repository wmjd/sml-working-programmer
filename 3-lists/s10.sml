(* matrix multiplication!!! *)
(* dotprod takes lists of eq len *)
fun dotprod ([],[]) = 0
|	dotprod (x::xs,y::ys) = x*y + dotprod(xs,ys);
(* transpose a matrix *)
fun headcol [] = []
|	headcol ((x::_) :: rows) = x :: headcol rows;
fun tailcols [] = []
|	tailcols ((_::xs) :: rows) = xs :: tailcols rows;
fun transp ([]::rows) = []
|	transp rows = headcol rows :: transp (tailcols rows);
(* matrix product *)
(*if you transpose the second matrix, then you have lists ready to feed to dotprod *)
fun matprod (A, B) = 
	let val C = transp(B)
		fun g (hd_A, C) = 
			if (null C) then nil
			else dotprod(hd_A, hd C) :: g(hd_A, tl C)
		fun f A =
			if (null A) then nil
			else g(hd A, C) :: f(tl A) 
	in f A end ;
	
val foo = [[2,0],
		   [3,~1],
		   [0,1],
		   [1,1]];
val bar = [[1,0,2],
           [4,~1,0]];
	
(* they did it this way instead: *)
fun rowprod(row,[]) = []
|	rowprod(row, col::cols) = 
		dotprod(row,col) :: rowprod(row,cols);
fun rowlistprod([], cols) = []
|	rowlistprod(row::rows, cols) = 
		rowprod(row,cols) :: rowlistprod(rows,cols);
fun mp(rowsA, rowsB) = rowlistprod(rowsA, transp rowsB); 


