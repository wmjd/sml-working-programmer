(* assume a matrix is an int list list *
 * then write transpose functions      *)

fun headcol [] = []
|	headcol ((x::xs)::rows) = x::(headcol rows)


fun tailrow [] = [] 
|	tailrow ((x::xs)::rows) = xs::(tailrow rows)

fun transpose ([]::rows) = [] 
|	transpose matrix = headcol matrix :: transpose(tailrow matrix)
