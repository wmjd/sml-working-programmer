infixr 5 @;
fun ([] @ ys) = ys
	| ((x::xs) @ ys) = x::(xs @ ys);

fun nrev nil = nil
	| nrev (x::xs)  = nrev(xs) @ [x];


fun reverseAppend (nil, l2) = l2
	| reverseAppend (x::xs, l2) = reverseAppend(xs, x::l2);  
fun rev ls = 
	let
		fun r(ls, acc) = 
			if ls = nil then acc
			else r(tl ls, (hd ls)::acc)
	in
		r(ls, nil)
	end

(* Exercise 3.7 Show the computation steps to reverse the list [1,2,3,4] using nrev and then rev
nrev([1,2,3,4])
nrev([2,3,4])@[1]
nrev([3,4])@[2]@[1]
nrev([4])@[3]@[2]@[1]
nrev(nil)@[4]@[3]@[2]@[1]
[4]@[3]@[2]@[1]
[]@[4,3]@[2]@[1]
[4,3]@[2]@[1]
(4::([3]@[2]))@[1]
(4::([]@[3,2]))@[1]
(4::[3,2])@[1]
[4,3,2]@[1]
4::[3,2]@[1]
4::3::[2]@[1]
4::3::2::[]@[1]
4::3::2::[1]
4::3::[2,1]
4::[3,2,1]
[4,3,2,1]


rev([1,2,3,4])
r([1,2,3,4], nil)
r([2,3,4], [1])
r([3,4], [2,1])
r([4], [3,2,1])
r([], [4,3,2,1])
[4,3,2,1]

*)

