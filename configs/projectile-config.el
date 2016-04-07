(require 'evil)
(require 'grizzl)
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)
;; Press Command-b for fuzzy switch buffer
;; Press Ctrl-p for fuzzy find in project
(define-key evil-normal-state-map (kbd "C-p") 'projectile-find-file)

(provide 'projectile-config)
