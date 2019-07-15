(* Exercise 3.5 Modify the append function to handle xs @ [] efficiently. *)
(* but it has to match this on ever recursive call, though it doesn't change because we recur on smaller xs, ie after the first time, it keeps asking, but the asnwer we know will always be the same . so it's more efficient for ys = [], and worse in all other cases *)
infixr 5 @;
fun ([] @ ys) = ys
	| (xs @ []) = xs
(*	| ((x::xs) @ ys) = x :: (xs @ ys); *)
	| (xs @ ys) = (hd xs)::((tl xs) @ ys);
