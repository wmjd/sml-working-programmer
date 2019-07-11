(* Exercise 2.6 Write a function to determine whether one time of day, in the
form (hours, minutes, AM or PM), comes before another. As an example,
(11, 59, "AM") comes before (1, 15, "PM"). *)

fun b4((h1:int, m1:int, s1:string), (h2:int, m2:int, s2:string)) : bool =
	if (s1="AM") andalso  (s2="PM") then true else
	if (s2="PM") andalso  (s1="AM") then false else
	if (h1<h2) then true else
	if (h1>h2) then false else	
	if (m1<m2) then true else false;
