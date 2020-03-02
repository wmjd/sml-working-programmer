(*zip pairs corresponding members of two lists*)
fun zip (x::xs, y::ys) = (x,y)::zip(xs,ys)
|   zip _ = [];

(*unzip is just the inverse of zip

producing two lists is tricky: helper or iter recur*)
fun conspair ((x,y),(xs,ys)) = (x::xs,y::ys);

fun unzip [] = ([],[])
|   unzip (head::tail) = conspair(head, unzip(tail));

(*using iterative recursion with accumulators, reverse*)
fun rev ([], finished) = finished
|   rev (x::xs, acc) = rev (xs, x::acc);  
fun unzipi ([], ax, ay) = (rev(ax, []), rev(ay, []))
|   unzipi ((x,y)::tail, ax, ay) = unzipi (tail, x::ax, y::ay); 
fun unzp l = unzipi(l, [], []);

