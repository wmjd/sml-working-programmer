val graph = [("a","b"),("a","c"),("a","d"),("b","e"),("c","f"),("d","e"),("e","f"),("e","g")];
val g = [(1,2),(1,3),(2,4),(2,5),(3,6),(3,7)];

(* find all of the nodes reachable from the first arg *)
fun next(_,nil) = nil
|	next(n, (src,dst)::paths) = 
		if n=src then dst::next(n,paths)
		else next(n,paths);

(* finds the first full path to its' end*)
fun p(n, nil) = nil
|	p(n, (path as (src,dst)) :: paths) = 
		if n = src then (dst :: p(dst, paths)) (*:: p(node, path::paths)*)
		else p(n,paths);

(* depth first search of all paths reachable from n *)
fun allpaths(n, graph) = 
	let fun loop nil = nil
		|	loop (nxt::nxts) = (nxt::loop(next(nxt,graph))) @ loop(nxts);
	in loop(next(n, graph))
	end;
(* this version is cleaner and puts the start node on the front of the list *)
fun dep(n, graph) = 
	let fun loop nil = nil
		|	loop (nxt::nxts) = (nxt::loop(next(nxt,graph))) @ loop(nxts);
	in loop [n]
	end;
(* notes: the inductive step conses the first of the next nodes to a loop that finds the next of that (this is the way the structure is depth first, keep finding next of the first next)
that whole expr is appended onto looping on the other nexts at that breadth. these steps constitute one call to loop. *)

(* breadth first search of all paths reachable from x *)
fun bread(x,g) =
	let fun innerloop nil = outerloop
		|	innerloop (nxt::nxts) = next(nxt)::innerloop(nxts)
		fun outerloop nil = nil
		| 	outerloop(N) = N @ innerloop(N) 
	in loop [x]
	end;


	(*let fun loop nil = nil
		|	loop(N as (n::ns)) = N @ loop(next(n,g)) @ loop(ns) 
	in loop [x] end;
	*)
