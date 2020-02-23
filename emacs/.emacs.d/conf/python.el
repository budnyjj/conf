;; Python-mode configuration

(setq python-indent-offset 4
      python-check-command "pylint")

;; Pymacs
(add-to-list 'load-path "~/.emacs.d/packages/pymacs")

(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")

;; Ropemacs
;; Need potring to Python3
;; (require 'pymacs)
;; (pymacs-load "ropemacs" "rope-")

;; (remove-hook 'before-save-hook 'rope-before-save-actions)
;; (remove-hook 'after-save-hook 'rope-after-save-actions)
;; (remove-hook 'kill-emacs-hook 'rope-exiting-actions)
