(* declare a datatype of trees where each branch node may have a finite number of branches - hint use list *)

datatype 'a widetree = Lf | Br of 'a * 'a widetree list;

val w = Br("Hello World", [Lf, Lf, Lf, Br("Coffee", [])]);
