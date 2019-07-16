(*Exercise 3.9 Give an equivalent definition of zip that does not depend upon the order in which patterns are considered.*)

fun z(_, nil) = nil
|	z(nil, _) = nil
|	z(x::xs, y::ys) = (x,y)::z(xs,ys);
