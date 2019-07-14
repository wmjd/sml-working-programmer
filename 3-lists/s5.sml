(* append with infix operator: @
   reverse with operator: rev *)

(* these are built-in, but implementation could look like this: *)
infixr 5 @;
fun ([] @ ys) = ys
	| ((x::xs) @ ys) = x::(xs @ ys);


(* write rev with append *)
fun rev nil = nil
	| rev (x::xs)  = rev(xs) @ [x];

(*
fun rv ls = 
	let
		fun rev (x::nil) = x
		| rev (x::y::cs) = rev(y::cs)::x;
		fun first nil = nil
		| first (x::xs) = rev(xs)::[x] 
	in
		first ls
	end ;
*)

fun reverseAppend (nil, l2) = l2
	| reverseAppend (x::xs, l2) = reverseAppend(xs, x::l2);  
