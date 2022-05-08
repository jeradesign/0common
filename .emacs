; John Brewer's .emacs file.

;; Set up screen --------------------------------------------------------------
;  (set-default-font "-*-Courier New-normal-r-*-*-12-90-96-96-c-*-iso8859-1")
; (set-default-font "-*-Lucida Console-normal-r-*-*-10-90-96-96-c-*-iso8859-1")
; (set-default-font "-*-Monaco-*-100-*" t)
; (set-default-font "-apple-monaco-medium-r-normal--10-100-75-75-m-100-mac-roman" t)
(setq default-frame-alist '((top . 4) (left . 58) (width . 120) (height . 50)))
;							(font . "-apple-monaco-medium-r-normal--10-100-75-75-m-100-mac-roman")))
(set-face-attribute 'default nil :family "Monaco" :height 100)

(setq frame-title-format "%b")

;; Set PATH -- change here if changed in .profile

(setenv "PATH" "/Users/jbrewer/bin::/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin")

;; munge global-font-lock-mode ------------------------------------------------
;; Turn on font-lock in all modes that support it
(global-font-lock-mode 1)
(setq font-lock-maximum-decoration t)

;; Changed by customize -------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-default-style (quote ((other . "java"))))
 '(column-number-mode t)
 '(cperl-continued-statement-offset 4)
 '(cperl-indent-level 4)
 '(cperl-label-offset -4)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(ispell-program-name "/opt/local/bin/ispell")
 '(ns-confirm-quit t)
 '(split-width-threshold 120)
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(word-wrap t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Customize modeline ---------------------------------------------------------

(setq column-number-mode t)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; Scrolling ------------------------------------------------------------------

;; scroll by line instead of by chunk
(setq scroll-conservatively 1)

;; don't move point when scrolling
(setq scroll-preserve-screen-position t)

;; Look and feel stuff --------------------------------------------------------

;; Don't quit emacs when I hit C-x C-c _if_ running in a window.
(if window-system
    (global-set-key "\C-x\C-c" 'server-edit))

;; Don't "suspend" emacs when I accidentally hit ctrl-z!
(global-unset-key "\C-z")

;; map meta-g to goto-line
(global-set-key "\M-g" 'goto-line)

;; map meta-r to "run" (in this case, "compile")
(global-set-key "\M-r" 'compile)

;; With tab-width of 4, java-mode only uses tabs to indent code.
;; Must set with setq-default, as tab-width is always per-buffer!
(setq-default tab-width 4)

;; backspace is "greedy" over tabs
(setq backward-delete-char-untabify-method 'hungry)

;; don't insert newlines when I scroll past end of file!
(setq next-line-add-newlines nil)

;; delete (not kill) selected text when I type over it
(delete-selection-mode t)

;; Major Modes setup ----------------------------------------------------------

;; text should auto-fill by default
;(toggle-text-mode-auto-fill)

;; text-mode setup
(add-hook 'text-mode-hook 'flyspell-mode)

;; cc-mode setup
(add-hook 'c-mode-common-hook 'imenu-add-menubar-index)

;; emacs-lisp setup
(add-hook 'emacs-lisp-mode-hook 'imenu-add-menubar-index)

;; keep ediff from popping up its own control frame
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq ediff-split-window-function 'split-window-horizontally)

;; use cperl-mode instead of perl-mode
(setq auto-mode-alist
	  (cons ' ("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode) auto-mode-alist))

(setq interpreter-mode-alist
	  (cons '("perl" . cperl-mode) interpreter-mode-alist))

(setq interpreter-mode-alist
	  (cons '("perl5" . cperl-mode) interpreter-mode-alist))

(setq interpreter-mode-alist
	  (cons '("miniperl" . cperl-mode) interpreter-mode-alist))

(setq cperl-hairy t)
(setq cperl-lazy-help-time 1)

(add-hook 'cperl-mode-hook 'imenu-add-menubar-index)

(setenv "PS1" "\\w > ")

(server-start)

;; Bring frame to front when emacsclient invokes us
(defun my-server-visit-hook()
       (x-focus-frame nil))

(add-hook 'server-switch-hook 'my-server-visit-hook)
(add-hook 'server-visit-hook 'my-server-visit-hook)
(put 'downcase-region 'disabled nil)
