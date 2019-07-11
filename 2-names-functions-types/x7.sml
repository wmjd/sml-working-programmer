(* Exercise 2.7 Old English money had 12 pence in a shilling and 20 shillings in
a pound. Write functions to add and subtract two amounts, working with triples
(pounds, shillings, pence). *)

type $ = int*int*int;
fun change(a : $, b : $) : $ = 
	let
		val rough = (#1a + #1b, #2a + #2b, #3a + #3b)
		fun smooth(m : $) : $ = 
			if (#3m div 12 > 0) 
				then smooth (#1m, #2m + #3m div 12, #3m mod 12)
			else if (#2m div 20 > 0)
				then smooth (#1m + #2m div 20, #2m mod 20, #3m) 
			else m
	in
		smooth(rough)	
	end ;
