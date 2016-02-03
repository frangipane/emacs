;------------------------;
;;; Python Programming ;;;
;------------------------;

;; -----------------------
;; python.el configuration
;; -----------------------

; from python.el
(require 'python)

(setq
 python-shell-interpreter "ipython")


;; -----------------------------
;; emacs IPython notebook config
;; -----------------------------

; IPython notebook
(include-plugin "emacs-ipython-notebook/lisp")
(require 'ein)


;; ------------------
;; misc python config
;; ------------------

; pydoc info
(include-plugin "pydoc-info-0.2")
(require 'pydoc-info)

; keybindings
(eval-after-load 'python
  '(define-key python-mode-map (kbd "C-c !") 'python-shell-switch-to-shell))

(provide 'python-settings)



























