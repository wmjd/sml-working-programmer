(* express functions using fn notation *)

val square = fn x  => x*x : real;
val cons = fn (x,y) => x::y;
val null = fn [] => true | (_::_) => false;
