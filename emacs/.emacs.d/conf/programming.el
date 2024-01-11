(el-get-bundle dash)
(req-package dash)

(el-get-bundle flycheck)
(req-package flycheck
  :config
  (progn
    (add-hook 'after-init-hook #'global-flycheck-mode)
    (setq-default flycheck-disabled-checkers
                  '(c/c++-clang c/c++-gcc))))

(el-get-bundle eldoc-eval)
(req-package eldoc)

(el-get-bundle json-reformat)
(req-package json-reformat)

(el-get-bundle json-mode)
(req-package json-mode
  :require json-reformat)

(el-get-bundle magit)
(req-package magit
  :config
  (progn
    (setq-default magit-define-global-key-bindings 'recommended)))

(el-get-bundle company-mode)
(req-package company
  :config
  (progn
    (setq company-backends
      '(company-capf company-keywords))
    (add-hook 'after-init-hook 'global-company-mode)
    (global-set-key (kbd "M-/") 'company-complete-common-or-cycle)
    (setq company-idle-delay 0)))

(el-get-bundle helm-gtags)
(req-package helm-gtags
  :require helm
  :config
  (progn
    (require 'helm-gtags)
    (add-hook 'asm-mode-hook 'helm-gtags-mode)
    (add-hook 'c-mode-hook 'helm-gtags-mode)
    (add-hook 'c++-mode-hook 'helm-gtags-mode)
    (add-hook 'java-mode-hook 'helm-gtags-mode)
    (custom-set-variables
     '(helm-gtags-path-style 'relative)
     '(helm-gtags-auto-update t)
     '(helm-gtags-direct-helm-completing t))
    (define-key helm-gtags-mode-map (kbd "M-s") 'helm-gtags-select)
    (define-key helm-gtags-mode-map (kbd "M-J") 'helm-gtags-dwim)
    (define-key helm-gtags-mode-map (kbd "M-B") 'helm-gtags-pop-stack)))

;; Enable config file highlighting
(require 'generic-x)
(define-generic-mode logcat-mode
  ;; comments
  nil
  ;; keywords
  nil
  ;; color rules
  '(("^//.*" . 'font-lock-comment-face)
    (".* E .*" . 'package-status-incompat)
    (".* E/.*: .*" . 'package-status-incompat)
    (".* W .*" . 'package-status-disabled)
    (".* W/.*: .*" . 'package-status-disabled))
  ;; files for which to activate this mode
  '("\\.clg$")
  ;; do not hightlight unpared quotes
  '((lambda () (set-syntax-table text-mode-syntax-table)))
  "A mode for Android logcat files")

;; Disable tab intentation
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; Line numbering
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;; Deal with trailing namespaces
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))
(el-get-bundle ws-butler)
(req-package ws-butler
  :config
  (progn
    (require 'ws-butler)
    (add-hook 'prog-mode-hook #'ws-butler-mode)))

;; Enable fontlock mode
(global-font-lock-mode 1)


;; C/C++ settings
(el-get-bundle flycheck-google-cpplint
  :url "https://github.com/flycheck/flycheck-google-cpplint.git"
  :features flycheck-google-cpplint)
(req-package flycheck-google-cpplint
  :require flycheck
  :config
  (progn
    (require 'flycheck-google-cpplint)
    (flycheck-add-next-checker 'c/c++-cppcheck
                               '(warning . c/c++-googlelint))
    (custom-set-variables '(flycheck-googlelint-verbose "3")
                          '(flycheck-c/c++-googlelint-executable "~/.emacs.d/utils/cpplint.py"))))

(el-get-bundle clang-format)
(req-package clang-format
  :config
  (progn
    (require 'clang-format)
    (global-set-key (kbd "M-<tab>") 'clang-format-region)))

(el-get-bundle clang-format+
  :url "https://github.com/SavchenkoValeriy/emacs-clang-format-plus.git"
  :features clang-format+)
(req-package clang-format+
  :config
  (progn
    (require 'clang-format+)))

(add-hook 'c-mode-hook (lambda () (setq fill-column 79)))
(add-hook 'c++-mode-hook (lambda () (setq fill-column 79)))
(add-hook 'python-mode-hook (lambda () (setq fill-column 79)))

(defconst my-cc-style
  '("ellemtel"
    (c-offsets-alist . ((arglist-cont-nonempty . +)
                        (arglist-close . 0)
                        (innamespace . [0])
                        (member-init-intro . 1)))))
(c-add-style "my-cc-style" my-cc-style)
(setq c-default-style "my-cc-style"
      c-basic-offset 4)


;; Java settings

;; JDEE
(add-to-list 'load-path "~/.emacs.d/packages/jdee-2.4.1/lisp")
(autoload 'jde-mode "jde" "JDE mode" t)
(setq auto-mode-alist
      (append '(("\\.java\\'" . jde-mode)) auto-mode-alist))

;; gradle-mode
;; (add-to-list 'load-path "~/.emacs.d/packages/gradle-mode")
;; (require 'gradle-mode)

;; (add-hook 'java-mode-hook (gradle-mode 1))

;; groovy-mode
;; (add-to-list 'load-path "~/.emacs.d/packages/groovy-mode")
;; (require 'groovy-mode)

;; (autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
;; (add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
;; (add-to-list 'auto-mode-alist '("\.gradle$" . groovy-mode))
;; (add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))
;; (add-to-list 'interpreter-mode-alist '("gradle" . groovy-mode))

(add-hook 'java-mode-hook (lambda () (setq fill-column 120)))


;; Go settings
;; (add-to-list 'load-path "~/.emacs.d/packages/go-mode")
;; (require 'go-mode-autoloads)


;; PHP settings

;;PHP mode
;; (add-to-list 'load-path "~/.emacs.d/el-get/php-mode")
;; (require 'php-mode)


;; Python settings

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
;; Need porting to Python3
;; (require 'pymacs)
;; (pymacs-load "ropemacs" "rope-")

;; (remove-hook 'before-save-hook 'rope-before-save-actions)
;; (remove-hook 'after-save-hook 'rope-after-save-actions)
;; (remove-hook 'kill-emacs-hook 'rope-exiting-actions)


(provide 'programming)
;;; programming.el ends here
