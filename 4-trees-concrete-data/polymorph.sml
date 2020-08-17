(* a sum datatype created with  type constructor *)

datatype ('a,'b) sum = In1 of 'a | In2 of 'b; 

datatype person = King
|	Peer of string*string*int
|	Knight of string
|	Peasant of string;

fun concat1 [] = ""
|	concat1 ((in1 s)::l) = s ^ concat1 l
|	concat1 ((in2 _)::l) = concat1 l;
