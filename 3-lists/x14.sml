val roman = [1000,500,100,50,10,5,1];

fun convert [] = []
|	convert (1000::r) = (#"M"::convert(r))
|	convert (500::r) = (#"D"::convert(r))
|	convert (100::r) = (#"C"::convert(r))
|	convert (50::r) = (#"L"::convert(r))
|	convert (10::r) = (#"X"::convert(r))
|	convert (5::r) = (#"V"::convert(r))
|	convert (1::r) = (#"I"::convert(r));

fun converts nil = nil 
|	converts(l::ls) = implode(convert(l))::converts(ls);

fun allChange (cs, cv, 0) = [cs]
|   allChange (cs, [], amt) = []
|   allChange (cs, c::cv, amt) =
	if amt<0 then []
		else allChange(c::cs, c::cv, amt-c) 
		@ allChange(cs, cv, amt) ;     

fun decToRoman n = converts(allChange([], roman, n));



