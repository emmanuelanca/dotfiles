;; -*- lexical-binding: t; -*-

(use-package eglot
  :hook ((c-ts-mode . eglot-ensure))
  :config
  (add-to-list 'eglot-server-programs
	       '((c-ts-mode) . ("clangd" "--query-driver=/usr/bin/gcc,/usr/bin/g++"))))

(provide 'my-eglot)
