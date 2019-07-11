
val x = (~1.0, 3.3)
and y = (3.15, 1.0);
fun vadd((x1,y1) :real*real, (x2,y2) :real*real) = (x1+x2,y1+y2); (* denoted type required *)
(* could just type the function not the arguments to save typing? *)

type vec = real * real;

fun vadd((x1,y1), (x2,y2)) : vec = (x1+x2,y1+y2);
fun vneg(x,y) : vec = (~x, ~y);
fun vsub(a,b) : vec = vadd(a, vneg b);

fun xof(x,y) = x;
fun yof(x,y) = y;
fun make(x,y) = (x,y) (* it's just an id function, tuples are literally created like one arg *)
fun foo(a:vec, b:vec) = make((xof a + xof b), yof(2.0, 1.0));
