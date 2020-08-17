datatype 'a tree = Lf 
|	Br of 'a * 'a tree * 'a tree;

val birnam = Br("The",
				Br("wood", Lf,
							Br("of", Br("Birnam", Lf, Lf),
								Lf)),
				Lf);

val tree2 = Br(2, Br(1, Lf, Lf), Br(3, Lf, Lf));
val tree5 = Br(5, Br(6,Lf,Lf), Br(7,Lf,Lf));
val tree4 = Br(4, tree2, tree5);

fun size Lf = 0
|	size (Br(v,left, right)) = 1 + size left + size right;
