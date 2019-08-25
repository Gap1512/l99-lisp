(defun my-length (lst)
  (loop
     for i in lst
     counting i into y
     finally (return y)))
