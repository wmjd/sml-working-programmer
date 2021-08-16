datatype person = King | Peer of string*string*int | Knight of string | Peasant of string

fun title person = case person of
		King => "His Majesty the King"
	|	(Peer(deg,terr,_)) => "The " ^ deg ^ " of " ^ terr
	|	(Knight name) => "Sir " ^ name
	|	(Peasant name) => name
