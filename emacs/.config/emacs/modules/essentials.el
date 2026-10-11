;; -*- lexical-binding: t; -*-

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(when (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))

(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(setq inhibit-startup-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message user-login-name
      initial-scratch-message nil)

(setq backup-directory-alist `(("." . "/tmp/emacs-backups/"))
      auto-save-file-name-transforms `((".*" "/tmp/emacs-autosaves/" t))
      auto-save-list-file-prefix "/tmp/emacs-autosaves/.saves-"
      lock-file-name-transforms `((".*" "/tmp/emacs-locks/" t)))

(make-directory "/tmp/emacs-backups/" t)
(make-directory "/tmp/emacs-autosaves/" t)
(make-directory "/tmp/emacs-locks/" t)

(setq-default mode-line-format
  '("%e"
    mode-line-front-space
    mode-line-mule-info
    mode-line-client
    mode-line-modified
    mode-line-remote
    " "
    (:propertize "%b" face bold)
    "       "
    (line-number-mode "L%l ")
    (column-number-mode "C%c")))

(set-face-attribute 'mode-line nil :background "green" :foreground "black")
(column-number-mode +1)
(which-key-mode +1)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(require 'ob-shell)

(provide 'essentials)
