(defun combination (n list)
  (let (res (j 0))
    (labels ((combination-aux (list-aux result i)
	       (when (>= (length list-aux) i)
		 (if (zerop i) (return-from combination-aux (and
							      (push (reverse result) res)
							      (setf j (1+ j)))))
		 (combination-aux (cdr list-aux) result i)
		 (combination-aux (cdr list-aux) (cons (car list-aux) result) (1- i)))))
      (if
	(combination-aux list nil n)
	(values
	 res j)))))
