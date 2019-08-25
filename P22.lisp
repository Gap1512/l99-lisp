(defun range (a b)
  (let ((begin (min a b))
	(end (max a b)))
    (loop
       for i from begin to end
       collect i into result
       finally (return (if (< a b) result (reverse result))))))
