(* Difference between functions?

fun f x y = h (g x) y;
fun f x = h (g x);

Calling the function with one argument evaluates the body in the second case.
Calling the function with one argument does not evaluate the body in the first casebecause SML follows call-by-value i.e. arguments are always evaluated before the body is evalauted with those values substituted. *)

(* Trying to make an example with this... *)

fun g x = print (x ^ "\n");
fun h x y = y : int;
fun f1 x y = h (g x) y;
fun f2 x = h (g x);

val r1 = f1 "this will print after";
val r2 = f2 "this will print before";
r1 42; (* this call causes print to be evaluated. all args to f1 needed first *)
r2 42; (* (g x) was already evaluated *)

(* This seems to work as expected:

f1 "some string" prints nothing as a result of eval'ing the expr
f2 "some string" prints the string as a result of eval'ing the expr	*)
