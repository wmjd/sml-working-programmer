(*Exercise 3.2 Write a function to return the last element of a list.*)

fun last(ls) = 
	if (tl ls) = nil then (hd ls) (* warning polyEqual *)
	else last(tl ls);
