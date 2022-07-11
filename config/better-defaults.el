;;Disable grotesque graphical toolbars (i don't use them)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)

;;inhibit audio bell (no beepy)
(setq visible-bell t)

;;Disable blinking cursor (it gives me anxiety)
(blink-cursor-mode 0)

;;Show Matching Parenthesis (always good, especially in lisps)
(show-paren-mode t)

;; minimize splitting windows automatically
(setq split-height-threshold 5)
(setq split-width-threshold 5)

;; Display time
;;(setq display-time-day-and-date t)
;;(display-time)

;;Display Battery (So your laptop doesn't suddenly die)
;;(display-battery-mode 1)

;; column and line number in mode line (It's nice)
(column-number-mode)

 ;;display linums down the side of buffer (Line number redundancy)
(global-display-line-numbers-mode t)

;;Highlight current line
(global-hl-line-mode +1)

;;Disable line numbers in terminal and places it's not needed
(dolist (mode '(term-mode-hook
shell-mode-hook
eshell-mode-hook treemacs-mode-hook))
(add-hook mode (lambda () (display-line-numbers-mode 0))))

;;Better font
(set-face-attribute 'default nil :font "Fira Code" :height 120)

;;Turn off lock files (they break react)
;;(setq create-lockfiles nil)

;;tabs instead of spaces for python
;;(setq-default indent-tabs-mode nil)

;;make src blocks tab correctly
(setq org-src-tab-acts-natively t)

;;turn down yuge tab width
(setq-default tab-width 2)

;;Remove trailing whitespace on save
(add-hook 'write-file-hooks 'delete-trailing-whitespace)

;;disable backups
;;(setq make-backup-files nil)

;;disable start screen
(setq inhibit-splash-screen t inhibit-startup-echo-area-message t)

;;Set default directory
(setq default-directory "~/")

;;set homepage
;;(find-file "~/projects/org/home.org")

;; Open up a eshell for good measure
(setq inhibit-startup-message t)
(setq initial-buffer-choice 'eshell)

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(require 'package) ;; initialise package sources

(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))

(unless (bound-and-true-p package--initialized)
	(package-initialize))

(unless package-archive-contents
(package-refresh-contents))

(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package exec-path-from-shell
   :init
   (setq exec-path-from-shell-check-startup-files nil)
   :config
   (exec-path-from-shell-initialize))
