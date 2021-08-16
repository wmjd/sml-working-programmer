(* declare a datatype (a,b)ltree of labelled binary trees, where branch nodes carry a label of type a and leaves carrt a label of type b *)

datatype ('a,'b)ltree = Lf of 'b | Br of 'a * ('a,'b)ltree * ('a,'b)ltree;

val t1 = Lf(1);
val t2 = Br("B1", t1, t1);
