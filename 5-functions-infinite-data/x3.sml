(* Don't try these at the machine -- what functions result from partial application *)

(* Supplying the first argument to these functions results in a function that takes an argument: in plus i, the result is a function that takes an argument and adds it to the value of i, in lesser a, the result is a function that compares its argument to a and returns the lesser, for pair x, the result is a function that pairs its argument to x, with equals x, the result is a function that compares its argument to x and returns the boolean result *)
