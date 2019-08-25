(defun remove-at (lst i)
  (loop for item in lst
     counting T into counter
     unless (= i counter)
     collect item into result
       finally (return result)))
