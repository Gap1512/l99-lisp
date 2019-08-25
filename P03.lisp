(defun element-at (lst position)
  (element-at-aux lst position 0))
(defun element-at-aux (lst position i)
  (cond
    ((not lst) lst)
    ((equal i position) (car lst))
    (T (element-at-aux (cdr lst) position (1+ i)))))
