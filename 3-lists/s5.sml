(* append with infix operator: @
   reverse with operator: rev *)

(* these are built-in, but implementation could look like this: *)
infixr 5 @;
fun ([] @ ys) = ys
	| ((x::xs) @ ys) = x::(xs @ ys);


(* write rev with append *)
fun rev nil = nil
	| rev (x::xs)  = rev(xs) @ [x];

(* reverse append takes the head of a list and cons's it to the second list
this is useful for reversing a list as you can pass nil as second list so the function essentially builds the list in that second arg, startign with the original arg, nil, and consing the head of the first list to this 2nd arg on the recursive call *)
fun reverseAppend (nil, l2) = l2
	| reverseAppend (x::xs, l2) = reverseAppend(xs, x::l2);  

fun rv ls = 
	let
		fun r(ls, acc) = 
			if ls = nil then acc
			else r(tl ls, (hd ls)::acc)
	in
		r(ls, nil)
	end
