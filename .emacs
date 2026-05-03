(setq evil-want-keybinding nil)   ; ← THIS IS REQUIRED

;; UI settings
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode 1)
(show-paren-mode 1)
(setq mac-command-modifier 'meta)
(setq ns-use-proxy-icon nil)
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(require 'package)
 
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
 
(package-initialize)

;; Refresh package contents if needed
(unless package-archive-contents
  (package-refresh-contents))

;; Install use-package if not present
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

;; Install packages
(unless (package-installed-p 'magit)
  (package-install 'magit))

(unless (package-installed-p 'gruber-darker-theme)
  (package-install 'gruber-darker-theme))


;; Evil mode
(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (setq evil-insert-state-cursor 'box))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

;; Magit
(use-package magit
  :ensure t)

;; Theme
(load-theme 'gruber-darker t)

;; Line numbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

;; Frame size
(add-to-list 'default-frame-alist '(width . 100))
(add-to-list 'default-frame-alist '(height . 50))

(setq ring-bell-function 'ignore)

(unless (package-installed-p 'nyan-mode)
  (package-install 'nyan-mode))
(require 'nyan-mode)
(nyan-mode 1)

(require 'ido)
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t) ; Enables flexible, fuzzy matching [2]


(set-face-attribute 'mode-line nil :height 150)
(set-face-attribute 'default nil :height 150)
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
		   nyan-mode powerline use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq make-backup-files nil)
