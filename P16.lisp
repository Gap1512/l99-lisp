(defun drop (lst i)
  (labels ((nthp (a b) (zerop (rem b a))))
    (loop 
       for item in lst
       counting T into x
       when (not (nthp i x))
       collect item into result
       finally (return result))))
