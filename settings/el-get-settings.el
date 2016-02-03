;; set the el-get path, and create it if it doesn't exist
(setq elget-path plugin-path)
(unless (file-exists-p elget-path)
  (make-directory elget-path))

;; add el-get to the load path, and install it if it doesn't exist
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))


;; packages to install from local sources
;(setq
; el-get-sources '(:name magit
;			:type elpa

;; packages to install from recipe files
(setq
 my-packages '(auctex
	       auto-complete
	       ein
	       magit
	       jedi
	       helm
	       helm-descbinds
	       markdown-mode
               color-theme-solarized))


;; first enable shallow clone, so we don't need to clone the entire
;; history of every project
(setq el-get-git-shallow-clone t)

;; then install
(el-get 'sync my-packages)

(provide 'el-get-settings)
