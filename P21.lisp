(defun insert-at (elem lst pos)
  (loop for item in lst
     counting T into counter
     when (= counter pos)
     collect elem into result
       end
     collect item into result
     finally (return result)))
