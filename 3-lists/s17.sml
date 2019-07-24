val graph = [("a","b"),("a","c"),("a","d"),("b","e"),("c","f"),("d","e"),("e","f"),("e","g")];

(* find all of the nodes reachable from the first arg *)
fun next(_,nil) = nil
|	next(n, (src,dst)::paths) = 
		if n=src then dst::next(n,paths)
		else next(n,paths);











(* finds all paths path from a node.*)
fun p(node, nil) = nil
|	p(node, (path as (from, to)) :: paths) = 
		if node = from then (to :: p(to, paths)) (*:: p(node, path::paths)*)
		else p(node,paths);

(* trace out the evaluation... 
smaller graph := [("a","b"),("b","c")]
p("a", graph)
*)
