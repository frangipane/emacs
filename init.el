;; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")

;; path to where plugins are kept
(setq plugin-path "~/.emacs.d/el-get/")

;; define various custom functions
;(require 'custom-functions)

;; configure general settings
(require 'general-settings)

;; install dependencies with el-get
(require 'el-get-settings)
