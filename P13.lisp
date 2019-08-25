(defun encode-direct (lst)
  (encode-direct-aux lst 0 nil))
(defun encode-direct-aux (lst i anterior)
  (labels ((test () (if (= 1 i) anterior (list i anterior))))
    (let ((item (car lst)))
      (cond
	((not lst) (list (test)))
	((or (not anterior) (equal item anterior)) (encode-direct-aux (cdr lst) (1+ i) item))
	(T (cons (test) (encode-direct-aux (cdr lst) 1 item)))))))
