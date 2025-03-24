;; Dependencies ----------------------------------------------------------------

;; Install MELPA package manager
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; VS Code Dark Theme
(use-package vscode-dark-plus-theme
  :ensure t
  :config
  (load-theme 'vscode-dark-plus t))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil)
 '(pdf-tools-handle-upgrades t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Enable company for auto-complete
(use-package company
  :ensure t)
(add-hook 'after-init-hook 'global-company-mode)

;; pdf-tools allows for viewing PDFs in emacs itself
(use-package pdf-tools
  :ensure t
  :config
  (pdf-tools-install))

;; magit for git integration
(use-package magit
  :ensure t)

;; Configuration ---------------------------------------------------------------

;; Set windmove to use M key
;; I find this more convenient to use than Shift
(windmove-default-keybindings 'meta)

;; Use K&R C style, since it's the best
(setq-default c-default-style
	      '((c-mode . "k&r")))

;; Display line and column numbers
(setq-default column-number-mode t)

;; Backup directory, so we don't have random '~' files everywhere, but still
;; are able to keep backups enabled
(setq-default backup-directory-alist '(("." . "/tmp/emacs/backup")))

;; -----------------------------------------------------------------------------
