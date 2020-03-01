(* Exercise 3.5 Modify the append function to handle xs @ [] efficiently. *)
infixr 5 @;
fun ([] @ ys) = ys
	| (xs @ []) = xs
	| ((x::xs) @ ys) = x :: (xs @ ys); 
