;; -*- lexical-binding: t; -*-

(use-package vertico
  :init
  (vertico-mode +1))

(use-package orderless
  :custom
  (completion-styles '(orderless basic)))

(use-package marginalia
  :init
  (marginalia-mode +1))

(provide 'my-vertico)
