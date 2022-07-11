(use-package all-the-icons)

(use-package doom-modeline
:ensure t
:init (doom-modeline-mode 1)
:custom ((doom-modeline-height 13)))

(use-package doom-themes)
;;(load-theme 'doom-horizon t) ;; Dark theme
(load-theme 'doom-fairy-floss t) ;;Dark theme
;;(load-theme 'doom-henna t) ;;Light theme
;;(load-theme 'doom-city-lights t) ;;Dark theme
;;(load-theme 'doom-gruvbox-light t) ;;Light theme
;;(load-theme 'doom-badger t) ;;Dark theme

(global-prettify-symbols-mode +1)
(defconst lisp--prettify-symbols-alist
  '(("lambda"  . ?λ)
    (">=" . ?≥)
    ))

(defun add-symbols (mode)
  (add-hook mode (lambda ()
                   (push '("->" .  "➡") prettify-symbols-alist)
                   (push '("=>" .  "⇒") prettify-symbols-alist)
                   (push '("M_PI" . "π") prettify-symbols-alist)
                   (push '("return" . "⏎ ") prettify-symbols-alist)
                   (push '(">=" . "≥") prettify-symbols-alist)
                   (push '("<=" . "≤") prettify-symbols-alist)
                   (push '("!=" . "≠") prettify-symbols-alist)
                   (push '("&&" . "∧") prettify-symbols-alist)
                   (push '("||" . "∨") prettify-symbols-alist)
                   (prettify-symbols-mode))))

(add-symbols 'c-mode-hook)
(add-symbols 'c++-mode-hook)

(use-package rainbow-delimiters
:hook (prog-mode . rainbow-delimiters-mode))

(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode)
  :custom
  (org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●")))
