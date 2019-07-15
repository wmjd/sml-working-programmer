(* 3.6 lists of lists, lists of pairs *)
(* append takes a pair of lists and makes a list by recursively consing the head to the recursive call on tail*)
(* concat takes a list of lists and makes a list by recursively appending the head to the recursive call on the tail*)
fun app(l1,l2) = 
	if (null l1) then l2 else (hd l1)::app(tl l1, l2);

fun a(nil, l) = l
	| a(x::xs, l) = x::a(xs, l)

fun cat [] = []
	| cat(l::ls) = l @ cat ls;
fun kat nil = nil
	| kat(ls) = (hd ls) @ cat (tl ls);

(*zip takes two lists and creates a list of pairs from the head of each list. new list is as long as the shortest of 2 args*)
fun zip(nil,_) = nil
	| zip(_,nil) = nil
	| zip(x::xs, y::ys) = (x,y)::zip(xs,ys);
(* this one from the book, *)
fun zipp(x::xs, y::ys) = (x,y)::zipp(xs,ys) (* switch the recursive case to the first line to catch this pattern *)
	| zipp _ = nil;

fun zip(x::xs,y::ys) = (x,y) :: zip(xs,ys)
	| zip _ = [];

