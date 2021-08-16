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


(* A tree is balanced by size if each node Br(x,t1,t2) satisfies
	|size t1 - size t2| <= 1
The obv rec fun to test wherther tree is balanced applies size at every subtree.
Write efficient function: *)


(* this is the naive version *)
fun isBl Lf = true
|	isBl (Br(_,l,r)) = abs(size l - size r) <= 1 andalso isBl l andalso isBl r

(* using options *)
fun bal Lf = SOME 0
|	bal (Br(_,l,r)) =
	let
		val br = bal r
		val bl = bal l
	in 
		if  isSome(bl) andalso isSome(br)
		then
			let 
				val vbl = valOf(bl)
				val vbr = valOf(br)
			in 
				if (vbl-vbr) <= 1 andalso (vbr-vbl) <= 1
				then SOME (vbl+vbr+1)
				else NONE
			end
		else NONE
	end;

fun isbal tree = if isSome(bal tree) then true else false;

(* using exceptions *)
exception UnbalancedTree
fun isBal Lf = 0
|	isBal (Br(_,l,r)) = 
		let left = isBal l and right = isBal r
		in if abs(left-right) <= 1 then left+1+right
			else raise UnbalancedTree;
