(defun rnd-select (lst i)
  (let (result)
    (loop
       for x from 1 to i
       and rnd = (1+ (random (length lst)))
       do (loop for item in lst
	     counting T into counter
	     when (= rnd counter)
	     do (push item result)))
    (reverse result)))

(defun rnd-permu (lst)
  (rnd-select lst (length lst)))
