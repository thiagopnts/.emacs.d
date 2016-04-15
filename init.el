(require 'package)

(setq package-enable-at-startup nil)

(package-initialize)

;; enable ctrl-u scrolling
(setq evil-want-C-u-scroll t)

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

;; show line numbers (these should be set before calling git-gutter
(global-linum-mode 1)

;; format line numbers
(setq linum-format "%4d \u2502 ")

;; tabbar settings
(tabbar-mode 1)
(setq tabbar-use-images nil)

;; prevent creation of backup files
(setq make-backup-files nil)

;; disable auto indent
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

(require 'git-gutter)
(global-git-gutter-mode)
(custom-set-variables
  '(git-gutter:update-interval 1))

(require 'evil-config)
(require 'projectile-config)
(require 'neotree-config)

(require 'smartparens-config)
(smartparens-mode)
(add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)

(require 'powerline-evil)
(powerline-vim-theme)

(tool-bar-mode -1)
(menu-bar-mode -1)

(global-set-key (kbd "≈") 'execute-extended-command)

(provide 'init)

;;; init.el ends here
