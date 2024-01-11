;; Package manager setup
(add-to-list 'load-path "~/.emacs.d/packages/el-get")
(unless (require 'el-get nil 'noerror)
  (require 'package)
  (setq package-archives
	'(("MELPA" . "http://melpa.org/packages/")
	  ("ELPA" . "http://tromey.com/elpa/")
	  ("gnu"  . "http://elpa.gnu.org/packages/")))
  (package-refresh-contents)
  (package-initialize)
  (package-install 'el-get)
  (require 'el-get))
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

;; Config manager setup
(el-get-bundle ht)
(el-get-bundle req-package)
(require 'req-package)

;; General settings
(setq custom-file "~/.emacs.d/conf/system.el")
(load custom-file)

;; Setup and configure packages
(add-to-list 'load-path "~/.emacs.d/conf")
(require 'general)
(require 'programming)

(el-get 'sync)
(req-package-finish)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (req-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
