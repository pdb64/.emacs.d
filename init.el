;;; init.el -- entry point to emacs config

;;; Commentary:
;;  I.   Melpa
;;  II.  Defaults
;;  III. Keybindings
;;  IV.  Elixir

;;; Code:

;;; I. Melpa Setup ------------------------------------------------

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;;; II. Defaults --------------------------------------------------

;; Disable tool bar
(tool-bar-mode -1)

;; Disable menu bar in CLI mode
(when (not (display-graphic-p))
  (menu-bar-mode -1))

;; No tabs, ever
(setq-default indent-tabs-mode nil)

;; Kill the alarm bell
(setq ring-bell-function 'ignore)

;; Whitespace
(setq whitespace-style (quote (trailing empty)))

;; Eshell
(setenv "PATH" (concat "/usr/local/bin:"
                       "/usr/bin:"
                       "/bin:"
                       "/usr/sbin:"
                       "/sbin:"
                       "/opt/X11/bin:"
                       (getenv "PATH")))

;; Magit
(setq magit-last-seen-setup-instructions "1.4.0")

;; Projectile
(projectile-global-mode)

;; Company
(add-hook 'after-init-hook 'global-company-mode)

;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;;; III. Keybindings ---------------------------------------------

;; Magit Status
(global-set-key (kbd "C-c g s") 'magit-status)

;;; IV. Elixir ---------------------------------------------------

;; Hooks
(add-hook' elixir-mode-hook
           (function (lambda ()
                       (whitespace-mode t)
                       (alchemist-mode t))))

;;; init.el ends here
