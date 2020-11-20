(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(column-number-mode t)
 '(compilation-message-face 'default)
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes '(zenburn))
 '(custom-safe-themes
   '("ca7fd88fa81ce1bdd1101dee25044967f037165af1fa29d7c2c78c4c4f069a85" "dd4db38519d2ad7eb9e2f30bc03fba61a7af49a185edfd44e020aa5345e3dca7" "75e26dae5e1939beb495a60ebb84bbc9267b031137fb589c50c9809548726e86" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" default))
 '(custom-theme-load-path '(custom-theme-directory t "/home/budnyjj/.emacs.d/themes") t)
 '(default-input-method "russian-computer")
 '(delete-selection-mode t)
 '(ecb-layout-window-sizes
   '(("right1"
      (ecb-directories-buffer-name 0.3298429319371728 . 0.29411764705882354)
      (ecb-sources-buffer-name 0.3298429319371728 . 0.3333333333333333)
      (ecb-methods-buffer-name 0.3298429319371728 . 0.35294117647058826))))
 '(ecb-options-version "2.40")
 '(fci-rule-color "#073642")
 '(flycheck-c/c++-googlelint-executable "~/.emacs.d/utils/cpplint.py")
 '(flycheck-check-syntax-automatically '(save mode-enabled))
 '(flycheck-checker-error-threshold 10000)
 '(flycheck-googlelint-verbose "3")
 '(global-linum-mode nil)
 '(helm-gtags-auto-update t)
 '(helm-gtags-direct-helm-completing t)
 '(helm-gtags-path-style 'relative)
 '(help-at-pt-display-when-idle '(flymake-overlay) nil (help-at-pt))
 '(help-at-pt-timer-delay 0.9)
 '(highlight-changes-colors '("#d33682" "#6c71c4"))
 '(highlight-tail-colors
   '(("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100)))
 '(ido-mode 'both nil (ido))
 '(irony-cdb-search-directory-list '("." "build" "out/Irony"))
 '(jde-ant-enable-find t)
 '(jde-build-function 'jde-ant-build)
 '(jde-compiler '("javac"))
 '(jde-run-working-directory "/home/budnyjj/dev/java/projects/binary-lex/")
 '(org-agenda-files
   '("~/docs/org/home.org" "~/docs/org/university.org" "~/docs/org/work.org" "~/docs/org/fun.org") t)
 '(package-selected-packages '(req-package))
 '(preview-image-type 'dvipng)
 '(save-place t nil (saveplace))
 '(scroll-bar-mode nil)
 '(semanticdb-javap-classpath
   '("/opt/java/jre/lib/rt.jar" "/opt/java/jre/lib/jfr.jar" "/opt/java/jre/lib/jfxswt.jar" "/opt/java/jre/lib/jsse.jar" "/opt/java/jre/lib/ext/jfxrt.jar" "/home/budnyjj/dev/java/lib/xstream-1.4.7.jar"))
 '(send-mail-function 'smtpmail-send-it)
 '(show-paren-mode t)
 '(show-paren-style 'mixed)
 '(smtpmail-smtp-server "owamsq.epam.com")
 '(smtpmail-smtp-service 587)
 '(syslog-debug-face
   '((t :background unspecified :foreground "#2aa198" :weight bold)))
 '(syslog-error-face
   '((t :background unspecified :foreground "#dc322f" :weight bold)))
 '(syslog-hour-face '((t :background unspecified :foreground "#859900")))
 '(syslog-info-face
   '((t :background unspecified :foreground "#268bd2" :weight bold)))
 '(syslog-ip-face '((t :background unspecified :foreground "#b58900")))
 '(syslog-su-face '((t :background unspecified :foreground "#d33682")))
 '(syslog-warn-face
   '((t :background unspecified :foreground "#cb4b16" :weight bold)))
 '(tab-stop-list '(4 8 12 16 20))
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#dc322f")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#b58900")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#859900")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#2aa198")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#268bd2")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 97 :width normal)))))
