;;(use-package csharp-mode)
(use-package rust-mode)
;;(use-package slime) ;; minor mode for LISP

(use-package typescript-mode
  :mode "\\.ts\\'"
  :config
  (setq typescript-indent-level 2))

(use-package web-mode
  :config
  (defun web-mode-init-hook()
    (add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode))
    (setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))
    (setq web-mode-markup-indent-offset 4))
  (add-hook 'web-mode-hook 'web-mode-init-hook))
