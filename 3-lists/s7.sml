(* takes a list in dec order of coin values, int amount to change 
   returns a list whose elts sum to the amt, and whose elt values stand for the val of the coin.
   ie, change(usc, 100) ]=> [25,25,25,25]
	   change(usc, 43)  ]=> [25,10,5,1,1,1]
*)
fun change(cv, 0) = []
| 	change(c::cv, amt) = 
		if amt<c then change(cv, amt)
		else c :: change(c::cv, amt-c);
val gbc = [30,20,10,5,2,1]
and usc = [25,10,5,1]; 
