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

(setq-default mode-line-frame-identification "")

(setq backup-directory-alist `(("." . "/tmp/emacs-backups/"))
      auto-save-file-name-transforms `((".*" "/tmp/emacs-autosaves/" t))
      auto-save-list-file-prefix "/tmp/emacs-autosaves/.saves-"
      lock-file-name-transforms `((".*" "/tmp/emacs-locks/" t)))

(make-directory "/tmp/emacs-backups/" t)
(make-directory "/tmp/emacs-autosaves/" t)
(make-directory "/tmp/emacs-locks/" t)

(column-number-mode +1)
(which-key-mode +1)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(require 'ob-shell)

(provide 'essentials)
