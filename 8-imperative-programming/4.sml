(* Expressions (E1; E2; ... ; EN) and while E1 do E2
   are derived from other expressions. Describe suitable translations
 
   You can translate (E1; E2; E3; ...; EN) into
   
   fn x => (
	fn x => (
	 ...
      fn x => (
		()
      )
    )
   )(E1)(E2)...(EN)


   But, the return value is (). 
   Can do this instead:

   fn x => (
    fn x => (
     ...
      fn x => (
       EN
      )
    )
   )(E1)(E2)...(EN-1)


   while E1 do E2 can be translated as      

   fun f b = (E2, f b);
   f E1;

*)

	






