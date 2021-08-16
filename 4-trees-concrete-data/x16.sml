(* give a dataype dec equiv to a list (a is ml code in the sense of alpha)
   after all lists didnt need to be built into ML	*)

datatype 'a list = Nil | Cons of 'a * 'a list;

val n = Nil;
val l1 = Cons(3, Cons(2, Cons(1,Nil)));
val l2 = ("Foo bar", n);

(* Slightly better:

We can also declare infix datatype constructors apparently!
Cons is right associastive so I can use infixr
   

infixr 4 ::;
datatype 'a list = Nil | :: of 'a * 'a list;

*)
