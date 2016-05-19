;;; pb-keybinds.el --- where the keybindings go I suppose.

;;; Commentary:
;;; 2016 (c) Patrick Arthur Brown

;;; Code:
;; Comment toggling
(global-set-key (kbd "C-c C-u") 'comment-or-uncomment-region)

;; Make backspace key work properly when running in a terminal
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-M-h") 'backward-kill-word)

;; Next/previous buffers
(global-set-key (kbd "C-c n") 'next-buffer)
(global-set-key (kbd "C-c p") 'previous-buffer)

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)

;; Overrides
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-x l") 'counsel-locate)

;; Custom counsel keybinds
(global-set-key (kbd "C-c g g") 'counsel-git-grep)
(global-set-key (kbd "C-c f") 'counsel-git)
(global-set-key (kbd "C-c a g") 'counsel-ag)

;; Helpers
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-load-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)

(provide 'pb-keybinds)
;;; pb-keybinds.el ends here
