(*
Modules form programs; they define own data structures and operations. The interface to the module is seperate.
A structure comvines data, operations and structures with a uniform naming convention
A signiture specifies a class of structures by listing name and type of each component 
functors are structures that take other structures as params *)

(*
Eg complex numbers. could do this

type complex = real * real;
val complexzero = (0.0,0.0);

... but its vbetter to use structure

Just wrap the decs in "struct", "end"
can bind to idenfitier with structure declaration, eg,
 *)

structure Complex = 
	struct
		type t = real * real;
		val zero : t = (0.0,0.0);
		fun sum ((x,y), (x',y')) : t = ((x+x'),(y+y'));
		fun neg (x,y) : t = (~x, ~y);
		fun diff ((x, y), (x',y')) : t = sum((x,y), neg(x',y'));
		fun prod ((x, y), (x', y')) : t = (((x*x') - (y*y')), ((x'*y) + (y'*x)));
	end;

(* the type is real * real, just like vec and any other real * real.
abstract data types will hide this. chapter 7 *)





