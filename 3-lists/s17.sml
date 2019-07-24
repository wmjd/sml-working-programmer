val graph = [("a","b"),("a","c"),("a","d"),("b","e"),("c","f"),("d","e"),("e","f"),("e","g")];

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

fun allpaths(n, graph) = 
	let fun loop nil = nil
		|	loop (nxt::nxts) = (nxt::loop(next(nxt,graph))) @ loop(nxts);
	in loop(next(n, graph))
	end;

