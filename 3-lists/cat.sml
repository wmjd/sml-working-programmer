(*write concatenate, ie write fun takes tuple of lists and makes and appends all of them, flattening one level*)

fun cat [] = []
|   cat (x::xs) = x @ cat xs;
