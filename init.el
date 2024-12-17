;; ~/.emacs.d/init.el

;; Performance tweaks for modern machines
(setq gc-cons-threshold 100000000) ; 100 mb
(setq read-process-output-max (* 1024 1024)) ; 1mb

;; Silence disruptive compiler warnings
(setq native-comp-async-report-warnings-errors nil)

;; << ***** >>
;; << Build-out .emacs.d/ structure here? >>
;; << ***** >>

;; Initial UI; dial twiddling
(tool-bar-mode -1)
(tooltip-mode -1)
(scroll-bar-mode -1)

(setq visible-bell nil)

;; Default frame height, width, and position
(setq initial-frame-alist '((top . 80) (left . 80)
                            (width . 150) (height . 48)))

(add-to-list 'default-frame-alist '(alpha-background . 85)) ; For all new frames henceforth
;; Default font
(set-face-attribute 'default nil
                    :font "Iosevka Comfy"
                    :weight 'medium
                    :height 160) ;; Note: height = px * 100

;; Tabs are EVIL ;-)
(setq-default indent-tabs-mode nil)
(setq tab-width 4) ;; seems like a better default than the default

;; Globals
(global-visual-line-mode t) ;; for line wrap

;; (global-display-line-numbers-mode 1)
;; Display line numbers, but only in programming modes
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; Don't generate backups or lockfiles. Please and thank you.
(setq create-lockfiles nil
      make-backup-files nil)

;; Keep customizations from littering init files (arghhh)
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; Configure runtime path to find lisp code
(add-to-list 'load-path "~/.emacs.d/elisp/")

;; Load Elpaca package manager
(require 'elpaca-setup)

;; Yasnippet
(use-package yasnippet
             :ensure t
             :defer t
             :config
             (setq tab-always-indent 'complete)
             (define-key yas-minor-mode-map (kbd "<escape>") 'yas-exit-snippet)
             (setq yas-snippet-dirs '("~/.emacs.d/snippets/"))
             (yas-global-mode 1)) ;; or M-x yas-reload-all if yasnippet started and config altered

;; yasnippet-snippets - large community repo for yasnippets
(use-package yassnippet-snippets
             :ensure t
             :defer t)


;; EOF ;;
