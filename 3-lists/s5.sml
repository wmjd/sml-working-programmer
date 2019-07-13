(* append with infix operator: @
   reverse with operator: rev *)

(* these are built-in, but implementation could look like this: *)
infixr 5 @;
fun ([] @ ys) = ys
	| ((x::xs) @ ys) = x::(xs @ ys);

fun rev nil = nil
	| rev ls = (rev (tl ls))::(hd ls); 
