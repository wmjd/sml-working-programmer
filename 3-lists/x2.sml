(*Exercise 3.2 Write a function to return the last element of a list.*)

fun last(ls) = 
	if (tl ls) = nil then (hd ls) (* warning polyEqual *)
	else last(tl ls);

(*use patterns this time...*)

fun l [x] = x 
|	l (x::y) = l y; 

fun j [x] = x
|	j (_::xs) = j xs;
