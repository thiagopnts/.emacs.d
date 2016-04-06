(require 'package)

(setq package-enable-at-startup nil)

(package-initialize)

;;(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
;;                        ("marmalade" . "https://marmalade-repo.org/packages/")
;;                        ("melpa" . "https://melpa.org/packages/")))

(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")

(cask-initialize)

(add-to-list 'load-path (expand-file-name "configs" user-emacs-directory))

(require 'evil-tmux-navigator)

;;(setq-default
;;   evil-tmux-navigator-bind-on-evil-window-map nil)
;;(evil-tmux-navigator-bind-keys)


(load-theme 'jbeans t)

(require 'pallet-config)

(require 'evil-config)
(require 'projectile-config)
(require 'neotree-config)

;;(require 'anything-bundle)

(provide 'init)

;;; init.el ends here
