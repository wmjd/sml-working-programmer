datatype person = King
|	Peer of string*string*int
|	Knight of string
|	Esquire of string*string
|	Peasant of string;

fun title King = "His Majesty the King"
|	title (Peer (deg,terr,_)) = "The " ^ deg ^ " of " ^ terr 
|	title (Knight name) = "Sir " ^ name
|	title (Esquire (name,town)) = name ^ ", Esq., of " ^ town
|	title (Peasant name) = name;
 
fun superior (King, Peer _) = true				
|	superior (King, Knight _) = true
|	superior (King, Esquire _) = true
|	superior (King, Peasant _) = true
|	superior (Peer _, Knight _) = true
|	superior (Peer _, Esquire _) = true
|	superior (Peer _, Peasant _) = true
|	superior (Knight _, Esquire _) = true
|	superior (Knight _, Peasant _) = true
|	superior (Esquire _, Peasant _) = true
|	superior _ = false

(*that takes a lot of lines! this only grows linearly because patters fall through*)
fun superior2 (_,King) = false
|	superior2 (King,_) = true
|	superior2 (_,Peer _) = false
|	superior2 (Peer _,_) = true
|	superior2 (_,Knight _) = false
|	superior2 (Knight _,_) = true
|	superior2 (_,Esquire _) = false
|	superior2 (Esquire _,_) = true
|	superior2 _ = false
(*notice the order is important*)

