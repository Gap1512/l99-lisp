(defun my-reverse (lst)
  (my-reverse-aux lst nil))
(defun my-reverse-aux (lst1 lst2)
  (cond
    ((not lst1) lst2)
    (T (my-reverse-aux (cdr lst1) (cons (car lst1) lst2)))))
