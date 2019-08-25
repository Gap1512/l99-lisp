(defun pack (lst) (reverse (pack-aux lst nil nil)))
(defun pack-aux (input output aux)
  (let ((element (car input)))
  (cond
    ((not input) output)
    ((equal element (cadr input)) (pack-aux (cdr input) output (cons element aux)))
    (T (pack-aux (cdr input) (append (list (cons element aux)) output) nil)))))

(defun encode (lst)
  (mapcar #'(lambda (lst-car) (list (length lst-car) (car lst-car))) (pack lst)))
