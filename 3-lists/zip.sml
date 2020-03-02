(*zip pairs corresponding members of two lists*)
fun zip (x::xs, y::ys) = (x,y)::zip(xs,ys)
|   zip _ = [];

(*unzip is just the inverse of zip

producing two lists is tricky: helper or iter recur*)
fun conspair ((x,y),(xs,ys)) = (x::xs,y::ys);

fun unzip [] = ([],[])
|   unzip (head::tail) = conspair(head, unzip(tail));

