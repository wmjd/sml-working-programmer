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

fun reflect Lf = Lf
|	reflect (Br(v,l,r)) = Br(v, reflect r, reflect l);


val rtree2 = reflect tree2

(* 4.15 Write a function that determines whether two trees t, u satisfy
		t = reflext u. 
The function shoud not build any new trees, so dont call reflext or Br, although
can use Br in patterns		*)

fun isReflect (Lf, Lf) = true
|	isReflect (Br(lv, ll, lr), Br(rv, rl, rr)) = 
		lv = rv andalso isReflect(ll,rr) andalso isReflect(lr,rl);
|	isReflect _ = false
