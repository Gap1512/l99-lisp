(defun decode (lst)
  (let (result)
    (loop
       for item in lst
       if (atom item) do (push item result)
       else do (loop repeat (car item) do (push (cadr item) result)))
    (reverse result)))
