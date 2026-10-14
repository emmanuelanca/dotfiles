;; -*- lexical-binding: t; -*-

(use-package treesit-auto
  :ensure t
  :config
  (treesit-auto-add-to-auto-mode-alist 'all)
  (setq treesit-auto-install 'prompt))	

(provide 'my-treesit)
