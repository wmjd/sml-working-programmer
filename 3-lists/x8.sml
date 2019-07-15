(* Exercise 3.8Compare the following function withconcat, considering its ef-fect and efficiency *)

fun f [] = []
	| f ([]::ls) = f ls
	| f ((x::l)::ls) = x :: f (l::ls);

fun cat [] = []
	| cat(l::ls) = l @ cat ls;

(*
f[[1,2],[3,4],[5,6]]
1::f[[2],[3,4],[5,6]]
1::2::f[[],[3,4],[5,6]]
1::2::f[[3,4],[5,6]]
1::2::3::f[[4],[5,6]]
1::2::3::4::f[[],[5,6]]
1::2::3::4::f[5,6]
1::2::3::4::5::f[6]
1::2::3::4::5::[6]

cat[[1,2],[3,4],[5,6]]

