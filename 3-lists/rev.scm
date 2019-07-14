(define (rev ls)
	(define (loop ls)
		(if (null? (cdr ls)) (car ls)
			(cons (loop (cdr ls)) (car ls))))
	(if (null? ls) '()
		(cons (loop ls) '())))
;this doesn't work. the recursive calls build a nest in the head of the list, not the tail



(define (rv ls) 
	(define (ra ls acc)
		(if (null? ls) acc
			(ra (cdr ls) (cons (car ls) acc))))
	(ra ls '())) ; calls reverse append with a list to be reversed and nil

