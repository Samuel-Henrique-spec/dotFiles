;;Add Zenburn Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

;;AC config
(require 'auto-complete)
(global-auto-complete-mode t)

;;Multiple cursors config
(require 'multiple-cursors) ;; Terminar config 

;;Flycheck config
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;;Move text simple config
(global-set-key [M-up] 'move-text-up)
(global-set-key [M-down] 'move-text-down)

;;Tab config
(setq-default tab-width 4)

;; Remove welcome message
(setq inhibit-startup-message t)

;;Remove Backup files
(setq make-backup-files nil)

;; Remove menus
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
;;Retirei as configs pois uso o emacs terminal 

;;Números das linhas e números relativos
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)


;;Font size
(set-face-attribute 'default nil :height 110)

;;Font type
(set-frame-font "Iosevka 15" nil t)


;;Packages
(require 'package)
(setq package-enable-at-startup nil) ;ativação automática dasbilitada

;MELPA - repository
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize);inicia pacotes

(unless (package-installed-p ''use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;neoTree
(use-package neotree
  :ensure t
  :bind (("C-\\". 'neotree-toggle)))

;;Atalhos personalizados
(global-set-key (kbd "C-<tab>") 'other-window);Window navgate
(global-set-key (kbd "M-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<right>") 'shrink-window-horizontally)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package gruber-darker-theme csharp-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
