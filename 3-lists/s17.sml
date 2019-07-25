val graph = [("a","b"),("a","c"),("a","d"),("b","e"),("c","f"),("d","e"),("e","f"),("e","g")];
val g = [(1,2),(1,3),(2,4),(2,5),(3,6),(3,7)];

(* find all of the nodes linked the first arg *)
fun next(_,nil) = nil
|	next(n, (src,dst)::paths) = 
		if n=src then dst::next(n,paths)
		else next(n,paths);

(* first attempt at find the first full path to its' end*)
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
		|	loop (nxt::nxts) = (nxt::loop(next(nxt,graph))) @ loop(nxts)
	in loop [n]
	end;
(* notes: the inductive step conses the first of the next nodes to a loop that finds the next of that (this is the way the structure is depth first, keep finding next of the first next)
that whole expr is appended onto looping on the other nexts at that breadth. these steps constitute one call to loop. *)

(* breadth first search of all paths reachable from n *)
(* don't need to compute next twice, let N be that value on each new call that nil isn't argued*) 
fun brd(src, g) = 
	let fun loop nil = nil
		|	loop (dst::dsts) = 
			let val N = next(dst,g) 
			in N @ loop(dsts @ N) end
	in src::loop[src] end;
(* 
The next destinations of the head of the arg to loop, N, is successively extended by appending a call to loop. 
You argue the next loop with the tail of the current arg to loop appended by N. 
So, you draw the next destinations from the head of the argument and append them to the arg of the next call.
Putting the next destinations at the end of the arg list is what gives the breadth-first structure 
*)
	 
use "include.sml"; (* i need the infix mem function from here *) 
(* their functions don't go down paths already traveled: *)
fun depthf([], graph, visited) = rev visited
|	depthf(x::xs, graph, visited) =
		if x mem visited then depthf (xs, graph, visited)
		else depthf (next(x,graph) @ xs, graph, visited);
(* this function is returning [] with appropriate args. will fix later *)


	
