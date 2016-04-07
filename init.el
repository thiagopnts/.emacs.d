(require 'package)

(setq package-enable-at-startup nil)

(package-initialize)

;;(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
;;                        ("marmalade" . "https://marmalade-repo.org/packages/")
;;                        ("melpa" . "https://melpa.org/packages/")))

(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")

(cask-initialize)

(add-to-list 'load-path (expand-file-name "configs" user-emacs-directory))

;;(setq-default
;;   evil-tmux-navigator-bind-on-evil-window-map nil)
;;(evil-tmux-navigator-bind-keys)

(load-theme 'jbeans t)

(require 'evil-tmux-navigator)

(evil-tmux-navigator-bind-keys)

(require 'pallet-config)

(require 'evil-config)
(require 'projectile-config)
(require 'neotree-config)
(require 'powerline-evil)
(powerline-vim-theme)
(tool-bar-mode -1)
(menu-bar-mode -1)
;; show line numbers
(global-linum-mode 1)

;; format line numbers
(setq linum-format "%4d \u2502 ")

(global-set-key (kbd "≈") 'execute-extended-command)

(provide 'init)

;;; init.el ends here
