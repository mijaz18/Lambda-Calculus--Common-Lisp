
;abcl-bin-1.5.0

;;List functions
;Append the list
(defun append(l1 l2)
	(if (eq l1 nil)
		l2
		(cons (car l1) (append(cdr l1) l2))))

;Reverse the list
(defun reverse(l1)
	(if(eq l1 nil) 
	l1
	(append(reverse (cdr l1)) (list (car l1)))))

;Add to end of list
(defun addtoend(X l1)
	(reverse(cons X (reverse l1))))

;Removes the duplicates from a list
(defun nub(l1)
(reverse (nub-help (reverse l1) )))

(defun nub-help(l1)
	(cond
		((eq l1 nil) l1)
		((member (car l1) (cdr  l1)) (cdr l1) (nub-help(cdr l1))) 
		(t (cons (car l1) (nub-help (cdr l1))))))

		
	
;;Set Functions
;Checking if element X is in list l1
(defun member (X l1)
  (cond
   ((eq l1 nil) nil)   
   ((eq X (car l1))  t)     
   (t (member X (cdr l1)))
   )
  )

;Inserting elements to the set
(defun insert(X l1)
	(cond
		((member X l1) l1)
		(t (cons X l1))))

;Gives the set intersection
(defun intersection(l1 l2)
	(cond
		((eq l1 nil) l1)
		((member (car l1) l2) 
		(cons (car l1)  (intersection (cdr l1) l2)))
		(t (intersection (cdr l1) l2))))

;Gices the union of two sets
(defun union (l1 l2)
	(nub (append l1 l2))
	)


;; Math Functions 
;Returns the absolute value
(defun abs(X)
	(if(> X 0)
	 X
	(* X -1)))

;Returns the factorial of the given number
(defun factorial(X)
	(if(= X 1)
		X
	(* X (factorial(- X 1)))))

;Returns true if 3 integers are the lengths of a right triangle
(defun right-tri(X1 X2 X3)
	(cond
		((= (+ (* X1 X1) (* X2 X2)) (* X3 X3)) t)
			(t nil)))

;Computes the gcd of the two numbers
(defun gcd(X1 X2)
	(cond
		((= X1 0) X2)
		((= X2 0) X1)
		((= X1 X2) X1)
		((> X1 X2) (gcd (- X1 X2) X2))
		(t (gcd X1 (- X2 X1))))
		)

;helper factor method
(defun factor(X1 n)
	(cond
		((= X1 n)1)

		))

(defun perfectp (X1)
	(cond
		((= X1 1) 1)
		
	))