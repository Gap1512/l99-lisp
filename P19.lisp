(defun rotate-aux (lst i)
  (loop for item in lst
     counting T into counter
     if (<= counter i)
     collect item into list1
     else
     collect item into list2
     end
     finally (return (append list2 list1))))

(defun rotate (lst i)
  (rotate-aux lst (if (< i 0) (+ (length lst) i) i)))
