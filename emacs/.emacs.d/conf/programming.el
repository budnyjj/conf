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

(el-get-bundle git-emacs)
(req-package git-emacs)

(el-get-bundle company-mode)
(req-package company
  :config
  (progn
    (setq company-backends
      '(company-semantic company-capf company-keywords))
    (add-hook 'after-init-hook 'global-company-mode)
    (global-set-key (kbd "M-/") 'company-complete-common-or-cycle)
    (setq company-idle-delay 0)))

(el-get-bundle function-args)
(req-package function-args
  :config
  (progn
    (require 'function-args)
    (fa-config-default)
    (add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
    (define-key function-args-mode-map (kbd "M-j") 'moo-jump-local)
    (define-key function-args-mode-map (kbd "M-o") 'fa-show)))

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

(el-get-bundle semantic-stickyfunc-enhance)
(req-package stickyfunc-enhance
  :config
  (progn
    (add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
    (semantic-mode 1)
    (require 'stickyfunc-enhance)))

;; Setup Semantic
(require 'cc-mode)
(require 'semantic)
(global-semanticdb-minor-mode 1)

;; Disable tab intentation
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; Automatic indentation
(global-set-key (kbd "RET") 'newline-and-indent)

;; Deal with trailing namespaces
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))
(add-hook 'before-save-hook 'delete-trailing-whitespace)

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

(defconst my-cc-style
  '("ellemtel"
    (c-offsets-alist . ((arglist-cont-nonempty . +)
                        (arglist-close . 0)
                        (innamespace . [0])
                        (member-init-intro . 1)))))
(c-add-style "my-cc-style" my-cc-style)
(setq c-default-style "my-cc-style"
      c-basic-offset 4)

(provide 'programming)
;;; programming.el ends here
