(el-get-bundle emms)
(req-package emms
  :config
  (progn
    (require 'emms-setup)
    (emms-all)
    (emms-default-players)
    (setq emms-source-file-default-directory "~/media/music/")
    (global-set-key (kbd "C-x C-e") 'emms)
    (global-set-key (kbd "M-S-<insert>") 'emms-add-directory-tree)))

(el-get-bundle async)
(el-get-bundle helm)
(req-package helm
  :config
  (progn
    (require 'helm-config)
    (helm-mode 1)
    (global-set-key (kbd "C-x C-f") 'helm-find-files)
    (global-set-key (kbd "C-s") 'helm-occur)
    (define-key global-map [remap find-file] 'helm-find-files)
    (define-key global-map [remap occur] 'helm-occur)
    (define-key global-map [remap list-buffers] 'helm-buffers-list)
    (define-key global-map [remap dabbrev-expand] 'helm-dabbrev)
    (define-key global-map [remap execute-extended-command] 'helm-M-x)
    (define-key global-map [remap apropos-command] 'helm-apropos)
    (unless (boundp 'completion-in-region-function)
      (define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
      (define-key emacs-lisp-mode-map       [remap completion-at-point] 'helm-lisp-completion-at-point))
    ))

(el-get-bundle helm-rg
  :url "https://github.com/cosmicexplorer/helm-rg.git"
  :features helm-rg)
(req-package helm-rg
  :require helm
  :config
  (progn
    (global-set-key (kbd "M-S") 'helm-rg)))

;; Cursor style
(set-default 'cursor-type 'hbar)

;; Bell settings
(setq visible-bell t)

;; Org-mode settings
(setq org-agenda-files (list "~/docs/org/plans.org"))

;; Emacs file backups
(setq
 backup-by-copying t               ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.emacs.d/backup"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)                ; use versioned backups

;; Keybindings
;; Open Terminal
(global-set-key (kbd "M-RET") 'ansi-term)

;; Switch between languages
(global-set-key (kbd "M-1")
                (lambda () (interactive)
                  (inactivate-input-method)))

(global-set-key (kbd "M-2")
		(lambda () (interactive)
		  (set-input-method "russian-computer")))

(global-set-key (kbd "M-3")
		(lambda () (interactive)
		  (set-input-method "belarusian")))

;; Navigation between windows
(windmove-default-keybindings 'meta)
(global-set-key (kbd "M-S-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-S-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-S-<down>") 'shrink-window)
(global-set-key (kbd "M-S-<up>") 'enlarge-window)

;; org-mode
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-font-lock-mode 1)

;; whitespace mode
(global-set-key (kbd "C-c w") 'whitespace-mode)

(provide 'general)
;;; general.el ends here
