(defun pack (lst) (reverse (pack-aux lst nil nil)))
(defun pack-aux (input output aux)
  (let ((element (car input)))
  (cond
    ((not input) output)
    ((equal element (cadr input)) (pack-aux (cdr input) output (cons element aux)))
    (T (pack-aux (cdr input) (append (list (cons element aux)) output) nil)))))
