datatype person = King
|	Peer of string*string*int
|	Knight of string
|	Peasant of string;

fun per2int King = 4
|	per2int (Peer _) = 3
|	per2int (Knight _) = 2
|	per2int (Peasant _) = 1

fun cmp(a,b) = (per2int a) = (per2int b);
