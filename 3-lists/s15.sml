(* write mem, newmem, union, inter *)
infix mem;
fun (a mem nil) = false
|	(a mem (x::xs)) = (a=x) orelse (a mem xs);

fun newmem(a, set) = if (a mem set) then (a::set) else set;

fun union(nil, set2) = set2
|	union(m::ms, set2) = newmem(m, union(ms, set2));

fun inter(nil,_) = nil
|	inter(x::xs, s2) = if (x mem s2) then x :: inter(xs, s2) else inter(xs, s2);

fun subs(nil,_) = true
(*|	subs(A as a::az, B) = if (a mem B) then subs(az, B) else false *)
|	subs(A as a::az, B) = (a mem B) andalso subs(az, B);

(* Equality of sets. THe built-in equality test is not valid for sets, 
ie [3,2] != [2,3] but they are the same set {3,4}. Set eq ignores order *)
fun seq(A,B) = subs(A,B) andalso subs(B,A);  

(*sets should be an ABSTRACT TYPE, hiding eq test on lists*)

(*Powerset*)
fun powset( [], base ) = [base]
|	powset( x::xs, base) = powset(xs, base) @ powset(xs, x::base);
val s = [1,2,3,4,5];
(* was not sure why I needed to make a list of the base instead of just returning the base in the base case 

remember, the inductive step APPENDS the vals of the recursive calls
this means their members will share the same shallow list. instead, perserve the structure of the lists by making the [base] be a list consed onto an empty list. APPENDING these things will give a list of the lists which represent subsets *)

(* cart product of A, B = set of all pairs whose elts are drawn from A, B*)
fun cartp(A,B)=
	let
		fun inner(a, []) = []
		|	inner(a, b::bz) =  (a,b)::inner(a,bz)
		fun outer([]) = [] 
		|	outer(a::az) = inner(a, B) @ outer(az)  
	in
		outer(A)
	end;
(* that was my implementation. this was theirs: *)
fun cp([], ys) = []
|	cp(x::xs, ys) = 
	let val xsprod = cp(xs,ys)
		fun pairx [] = xsprod
		|	pairx(y::ys) = (x,y) :: (pairx ys)
	in pairx ys end;



