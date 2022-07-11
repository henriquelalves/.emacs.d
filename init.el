(org-babel-load-file "~/.emacs.d/config/reduce-garbage.org")
(org-babel-load-file "~/.emacs.d/config/better-defaults.org")
;;(org-babel-load-file "~/.emacs.d/config/evil.org")
(org-babel-load-file "~/.emacs.d/config/ivy.org")
(org-babel-load-file "~/.emacs.d/config/visuals.org")
;;(org-babel-load-file "~/.emacs.d/config/functions.org")
(org-babel-load-file "~/.emacs.d/config/programming-modes.org")
;;(org-babel-load-file "~/.emacs.d/config/yas.org")
(org-babel-load-file "~/.emacs.d/config/helpful-packages.org")
(org-babel-load-file "~/.emacs.d/config/magit.org")
(org-babel-load-file "~/.emacs.d/config/projectile.org")
(org-babel-load-file "~/.emacs.d/config/roam.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
	 '(scala-mode php-mode lsp-pyright lsp-dart lsp-origami helm-lsp lsp-haskell lsp-python-ms lsp-java projectile magit company helpful which-key yasnippet web-mode typescript-mode slime cider clojure-mode haskell-mode rust-mode csharp-mode org-bullets rainbow-delimiters doom-themes doom-modeline all-the-icons ivy-rich counsel ivy diminish exec-path-from-shell use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(defun reload-init ()
	(interactive)
	(load-file "~/.emacs.d/init.el"))
