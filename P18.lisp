(defun slice (lst begin end)
  (loop for item in lst
     counting T into counter
     when (<= begin counter end)
     collect item into result
     finally (return result)))
