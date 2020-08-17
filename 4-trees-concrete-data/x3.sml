datatype geo = Circle of real
|	Rect of real * real
|	Tri of real * real; (* right tri only *)

fun area (Circle r) = 3.14*r*r
|	area (Rect (l,w)) = l*w
|	area (Tri  (l,w)) = 0.5*l*w;
