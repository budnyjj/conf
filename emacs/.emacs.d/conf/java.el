;; JDEE
(add-to-list 'load-path "~/.emacs.d/packages/jdee-2.4.1/lisp")
(autoload 'jde-mode "jde" "JDE mode" t)
(setq auto-mode-alist
      (append '(("\\.java\\'" . jde-mode)) auto-mode-alist))

;; gradle-mode
(add-to-list 'load-path "~/.emacs.d/packages/gradle-mode")
(require 'gradle-mode)

(add-hook 'java-mode-hook (gradle-mode 1))

;; groovy-mode
(add-to-list 'load-path "~/.emacs.d/packages/groovy-mode")
(require 'groovy-mode)

(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'auto-mode-alist '("\.gradle$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("gradle" . groovy-mode))
