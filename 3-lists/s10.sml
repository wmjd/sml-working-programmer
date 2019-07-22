(* matrix multiplication!!! *)
(* dotprod takes lists of eq len *)
fun dotprod ([],[]) = 0.0
|	dotprod (x::xs,y::ys) = x*y + dotprod(xs,ys);

(* matrix product
takes A= m x k, B= k x n matrices and element i,j of the resultant matrix is just
dotprod of row i in A with col j in B *)



