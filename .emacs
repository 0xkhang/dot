;; UI Settings
(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; Package Management
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Ensure use-package is available
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; Evil - No custom config, just defaults
(use-package evil
  :ensure t
  :config
  (evil-mode 1))


(setq evil-insert-state-cursor 'box)

;; Magit
(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))


;; Gruber Darker Theme
(use-package gruber-darker-theme
  :ensure t
  :config
  (load-theme 'gruber-darker t))

;; Font Settings
(add-to-list 'default-frame-alist '(font . "Menlo-10"))

;; Disable backup files
(setq make-backup-files nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e27c9668d7eddf75373fa6b07475ae2d6892185f07ebed037eedf783318761d7"
     default))
 '(package-selected-packages
   '(doom-modeline evil evil-collection gruber-darker-theme helm magit
		   powerline use-package)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
