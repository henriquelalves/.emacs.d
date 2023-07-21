(org-babel-load-file "~/.emacs.d/config/reduce-garbage.org")
(org-babel-load-file "~/.emacs.d/config/better-defaults.org")
(org-babel-load-file "~/.emacs.d/config/programming-modes.org") ;; TODO: Discover which package is messing with this script setup (an install from scratch fails if this is after helpful-packages)
(org-babel-load-file "~/.emacs.d/config/ivy.org")
(org-babel-load-file "~/.emacs.d/config/visuals.org")
(org-babel-load-file "~/.emacs.d/config/functions.org")
(org-babel-load-file "~/.emacs.d/config/helpful-packages.org")
(org-babel-load-file "~/.emacs.d/config/magit.org")
(org-babel-load-file "~/.emacs.d/config/projectile.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ede-project-directories
	 '("/home/peronio/Projects/Sailfish/Games/4-MergeWordsPuzzle"))
 '(org-agenda-files
	 '("~/Projects/org-files/agenda/financeiro.org" "/Users/macpc/Projects/org-files/agenda/pessoal.org"))
 '(package-selected-packages
	 '(org-roam projectile magit org-tracktable helpful which-key org-bullets rainbow-delimiters doom-themes doom-modeline all-the-icons ivy-rich counsel ivy diminish gdscript-mode csharp-mode typescript-mode clojure-mode scala-mode php-mode rust-mode lsp-pyright flycheck company lsp-dart lsp-origami helm-lsp lsp-haskell lsp-python-ms lsp-java yasnippet lsp-ui lsp-mode exec-path-from-shell use-package))
 '(safe-local-variable-values
	 '((eval org-roam-db-sync)
		 (eval setq-local org-roam-db-location
					 (expand-file-name "org-roam.db" org-roam-directory))
		 (eval setq-local org-roam-directory
					 (expand-file-name
						(locate-dominating-file default-directory ".dir-locals.el"))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
