;; -*- lexical-binding: t; -*-

(use-package corfu
  :custom
  (corfu-auto t)
  (corfu-cycle t)
  (corfu-auto-delay 0.1)
  (corfu-auto-prefix 2)
  :init
  (global-corfu-mode))

(provide 'my-corfu)
