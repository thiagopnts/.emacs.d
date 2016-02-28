(require 'package)

(setq package-enable-at-startup nil)

(package-initialize)

(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")

(cask-initialize)

(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

;;(require 'custom-bundle)
;;(require 'anything-bundle)

(provide 'init)

;;; init.el ends here