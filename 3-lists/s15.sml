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
|	powset( x::xs, base) = powser(xs, base) @ powset(xs, x::base);
