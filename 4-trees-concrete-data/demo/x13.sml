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

val unbalA = Br(0, Lf, tree4);


fun size Lf = 0
|	size (Br(v,left, right)) = 1 + size left + size right;


(* depth measures longest path root->leaf *)
fun depth Lf = 0
|	depth (Br(v, left, right)) = 1 + Int.max(depth left, depth right);



(* write function compsame(x,n) constructs complete binary tree of depth n, labelling all nodes with x. Efficiency? *)

fun compsame(x, 0) = Lf
|	compsame(x, n) = Br(x, compsame(x,n-1), compsame(x,n-1));

(* fun shortest Lf = 0
|	shortest (Br(_,l,r) *)



fun bal Lf = SOME 0
|	bal (Br(_, SOME l, SOME r)) = 
	let val bl = bal l
		val br = bal r
	in SOME 1 end;
