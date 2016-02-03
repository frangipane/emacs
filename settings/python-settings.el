;------------------------;
;;; Python Programming ;;;
;------------------------;

;; -----------------------
;; python.el configuration
;; -----------------------

; from python.el
(require 'python)


;; -----------------------------
;; emacs IPython notebook config
;; -----------------------------

; IPython notebook
(include-plugin "emacs-ipython-notebook/lisp")
(require 'ein)


; keybindings
(eval-after-load 'python
  '(define-key python-mode-map (kbd "C-c !") 'python-shell-switch-to-shell))

(provide 'python-settings)



























