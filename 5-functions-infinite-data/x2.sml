(* modify functions to use val instead of fun *)

val area = fn r => Math.pi * r*r;
val title = fn name => "The Duke of " ^ name;
val lengthvec = fn (x,y) => Math.sqrt(x*x + y*y)
