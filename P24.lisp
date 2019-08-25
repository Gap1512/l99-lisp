(defun range (a b)
  (let ((begin (min a b))
	(end (max a b)))
    (loop
       for i from begin to end
       collect i into result
       finally (return (if (< a b) result (reverse result))))))

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

(defun lotto-select (numbers max)
  (rnd-select (range 1 max) numbers))
