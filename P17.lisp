(defun split (lst i)
  (loop for item in lst
     counting T into counter
     if (<= counter i)
     collect item into list1
     else
     collect item into list2
     end
     finally (return (list list1 list2))))
