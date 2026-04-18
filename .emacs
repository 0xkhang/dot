(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

(add-to-list 'load-path "~/softwares/emacs-plugins/evil")
(require 'evil)
(evil-mode 1)

(add-to-list 'custom-theme-load-path
             "~/softwares/emacs-plugins/gruber-darker-theme")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e27c9668d7eddf75373fa6b07475ae2d6892185f07ebed037eedf783318761d7"
     default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'default-frame-alist
             '(font . "Iosevka-10"))

(setq make-backup-files nil)

;; Increase mode line height (e.g., make it 2x taller)
(setq mode-line-height 2)

;; Or set specific pixel height (example: 40 pixels)
(setq mode-line-format (copy-tree mode-line-format))
(set-face-attribute 'mode-line nil :height 140)  ; 140% of default
(set-face-attribute 'mode-line-inactive nil :height 140)
