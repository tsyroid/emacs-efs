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

;; Default font
(set-face-attribute 'default nil
                    :font "Iosevka Comfy"
                    :weight 'medium
                    :height 160) ;; Note: height = px * 100

;; Tabs are EVIL ;-)
(setq-default indent-tabs-mode nil)

;; Add to Emacs runtime path


;; Don't generate backups or lockfiles. Please and thank you.
(setq create-lockfiles nil
      make-backup-files nil)

;; Keep customizations from littering init files (arghhh)
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
