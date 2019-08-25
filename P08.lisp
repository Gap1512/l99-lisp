(defun compress (lst)
  (let (result)
    (loop
       for item in lst
       and item-aux = nil then item
       unless (equal item item-aux) do
	 (push item result))
    (reverse result)))
