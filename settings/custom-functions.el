;----------------------;
;;; Custom Functions ;;;
;----------------------;

(defun make-plugin-path (plugin)
  (expand-file-name
   (concat plugin-path plugin)))

(provide 'custom-functions)
