;; Display time
(display-time)

;; Display line number
(line-number-mode t)

;; Display column number
(column-number-mode t)

;; Don't make new line when cursor is end of buffer.
(setq next-line-add-newlines nil)

;; Font-Lock mode
(global-font-lock-mode t)

;;; use space for indentation
(setq-default indent-tabs-mode nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Wanderlust
(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)

(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; mew

(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; gtags
(autoload 'gtags-mode "gtags" "" t)
(setq load-path (cons "/usr/local/share/gtags" load-path))

(setq c-mode-hook
      '(lambda ()
	 (gtags-mode 1)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; navi2ch
(autoload 'navi2ch "navi2ch" "Navigator for 2ch for Emacs" t)
(setq navi2ch-list-bbstable-url "http://menu.2ch.net/bbsmenu.html")

;; patch file
(add-to-list 'auto-mode-alist '("\\.patch\\'" . fundamental-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;PO mode stuff

(add-to-list 'auto-mode-alist '("\\.pox?\\'" . po-mode))
(autoload 'po-mode "po-mode")

(global-set-key [(f1)] (lambda () (interactive) (manual-
  entry (current-word))))
