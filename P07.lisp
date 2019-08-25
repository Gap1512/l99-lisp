(defun my-flatten (lst)
  (reverse (my-flatten-aux lst nil)))
(defun my-flatten-aux (lst1 lst2)
  (let ((element (car lst1)))
    (cond
      ((not lst1) lst2)
      ((atom element) (my-flatten-aux (cdr lst1) (cons element lst2)))
      (T (my-flatten-aux (cdr lst1) (my-flatten-aux element lst2))))))
