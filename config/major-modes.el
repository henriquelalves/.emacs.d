(let* ((pkg-list '(lsp-mode lsp-ui lsp-java lsp-python-ms lsp-haskell helm-lsp lsp-treemacs dap-mode lsp-origami lsp-dart company flycheck lsp-pyright
                            ;; modes
                            rust-mode php-mode scala-mode dart-mode clojure-mode typescript-mode csharp-mode)))

  (mapc (lambda (pkg)
          (unless (package-installed-p pkg)
            (package-install pkg))
          (require pkg))
        pkg-list)

;;  (yas-global-mode)
  (add-hook 'prog-mode-hook 'lsp))
