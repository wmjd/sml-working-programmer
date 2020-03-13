val roman = [1000,500,100,50,10,5,1];


fun allChange (cs, cv, 0) = [cs]
|   allChange (cs, [], amt) = []
|   allChange (cs, c::cv, amt) =
	if amt<0 then []
		else allChange(c::cs, c::cv, amt-c) 
		@ allChange(cs, cv, amt) ;     

allChange([], roman, 10);



