signature KEYWORD =
	sig
	val alphas: string list
	and symbols: string list
	end;

signature LEXICAL =
	sig
	datatype token = Id of string | Key of string
	val scan : string -> token list
	end;

functor Lexical (Keyword: KEYWORD) : LEXICAL =
	struct
	datatype token = Key of string | Id of string;

	fun member (x:string, l) = List.exists (fn y => x=y) l;

	fun alphaTok a =
		if member(a, Keyword.alphas) then Key(a) else Id(a);

	(* scanning of a symbolic keyword *)
	fun symbolic (sy, ss) =
		case Substring.getc ss of
			NONE	=> (Key sy, ss)
		|	SOME(c,ss1) =>
				if member(sy, Keyword.symbols) orelse not (Char.isPunct c)
				then (Key sy, ss) else symbolic(sy ^ String.str c, ss1);

	(* scanning of a substring into a list of tokens *)
	fun scanning (toks, ss) = 
		case Substring.getc ss of
			NONE	=> rev toks (* end of substring *)
		|	SOME(c,ss1) =>
				if Char.isAlphaNum c
				then (* identifier or keyword *)
					let val (id, ss2) = Substring.splitl Char.isAlphaNum ss
					val tok		= alphaTok (Substring.string id)
					in scanning (tok::toks, ss2) end
				else if Char.isPunct c
				then (* special symbol *)
					let val (tok, ss2) = symbolic (String.str c, ss1)
					in scanning (tok::toks, ss2) end
				else (* ignore spaces, line breaks, control chars *)
					scanning(toks, Substring.dropl (not o Char.isGraph) ss);

	fun scan a = scanning([], Substring.full a);
	end;
