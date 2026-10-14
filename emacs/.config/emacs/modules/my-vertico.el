;; -*- lexical-binding: t; -*-

(use-package vertico
  :ensure t
  :init
  (vertico-mode +1))

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic)))

(use-package marginalia
  :ensure t
  :init
  (marginalia-mode +1))

(provide 'my-vertico)
