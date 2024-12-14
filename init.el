;; ~/.emacs.d/init.el

;; Performance tweaks for modern machines
(setq gc-cons-threshold 100000000) ; 100 mb
(setq read-process-output-max (* 1024 1024)) ; 1mb

;; Silence disruptive compiler warnings
(setq native-comp-async-report-warnings-errors nil)

;; Build-out .emacs.d/ structure here. Create DIRS that
;; don't already exist.
;; > snippets
;; > custom?
;; > elisp
;; > modules

;; (setq inhibit-startup-message t)
(setq visible-bell nil)

(tool-bar-mode -1)
(tooltip-mode -1)
(scroll-bar-mode -1)

(set-face-attribute 'default nil
                    :font "Iosevka Comfy"
                    :weight 'medium
                    :height 160) ;; Note: height = px * 100

;; Where I come from, tabs are EVIL ;-)
;; and should be banished at the earliest possible convenience.
(setq-default indent-tabs-mode nil)

;; Don't generate backups or lockfiles. Please and thank you.
(setq create-lockfiles nil
      make-backup-files nil)

;; Keep customizations from littering my init files (arghhh)
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
