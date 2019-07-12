(* warmup on ad hoc list exercises of my own making... *)

(* list of prime ints to n *)
fun prime n = 	 
	let	fun isprime(i,j) = 
			if (j=i) then true 
			else if (i mod j = 0) then false
			else isprime(i, j+1)
		fun iter(i,ls) = 
			if (i>n) then ls else iter(i+1, (if isprime(i,2) then i::ls else ls)) 
	in iter(2, nil) end;
