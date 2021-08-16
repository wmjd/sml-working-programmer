(*

The case expression. This is another vehicle for pattern-matrching and has the form

	case E of P1 => E1 | ... | Pn => En

Case is equivalent to an expression that declares a function by cases and applies it to E:

	let fun f(P1) = E1 | ... | f(Pn) = En in f(E) end

*)
