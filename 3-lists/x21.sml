fun zip_lists([], [])      = []
  | zip_lists(x::xs, [])   = [x] :: zip_lists(xs,[])
  | zip_lists(x::xs,y::ys) = (x::y) :: zip_lists(xs,ys);

fun transp2 [] = []
  | transp2(row::rows) = zip_lists(row, transp2 rows);
