(* Write an imperative version of the function sqrt shich computes real square roots by Newton's method. Here is the code from 2.17 that does this functionally *)

(* acc stands for accuracy NOT accumulator *)
fun sqroot a =
	let val acc = 1.0E~10
		fun findroot x =
			let val nextx = (a/x + x) / 2.0
			in if abs (x-nextx) < acc*x
				then nextx else findroot nextx
			end
	in findroot 1.0 end;

fun sqrt a = 
	let val acc = 1.0E~10
		val x = ref 1.0
		val next = ref ((a/ !x + !x) / 2.0)
	in (
		while abs (!x - !next) >=  acc* !x do (
			x := !next ;
			next := (a / !x + !x) / 2.0 
		) ;
		!next
	) end ; 

