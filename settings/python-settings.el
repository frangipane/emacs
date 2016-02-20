;------------------------;
;;; Python Programming ;;;
;------------------------;

;; -----------------------
;; Elpy configuration
;; -----------------------

;; Elpy
(elpy-enable)

;; set 
(setq elpy-rpc-pythonpath "jedi")

;; use IPython REPL instead of standard Python REPL integration
(elpy-use-ipython)

(custom-set-variables
 '(elpy-interactive-python-command "ipython"))
; '(python-shell-interpreter "ipython"))


;; Emacs+elpy comes with package called Flymake to support syntax checking.
;; Switch out Flymake for Flycheck, which supports realtime syntax checking.
;; dependency: conda install flake8
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting
;; dependency: conda install autopep8 (NA via anaconda)
;(require 'py-autopep8)
;(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)


;; ------------------
;; misc python config
;; ------------------

; keybindings
(eval-after-load 'python
  '(define-key python-mode-map (kbd "<C-return>") 'python-shell-send-region))

(provide 'python-settings)



























