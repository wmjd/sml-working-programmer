(* works by consing the first element of left list recrusively and the base case handles empty left list by returning the right list *)
infixr 5 @;
fun ([] @ ys) = ys
	| ((x::xs) @ ys) = x::(xs @ ys);

(* appends recursive call on left to a singleton list made with head element *)
fun nrev nil = nil
	| nrev (x::xs)  = nrev(xs) @ [x];

(* recursively strips the head of the first element and conses it to the second list in the recursive call. tail recursive, right? *)
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

fun revv ls =
	let fun r([], acc) = acc
		|	r(x::xs, acc) = r(xs, x::acc)
	in r(ls, []) end

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

