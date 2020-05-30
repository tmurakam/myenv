;; Activate Backspace 
(global-set-key "\C-h" 'delete-backward-char)
(define-key function-key-map [delete] [8])
(put 'delete 'ascii-character 8)

;; key binds
(global-set-key "\M-c" 'compile)
(global-set-key "\M-g" 'goto-line)
(global-set-key "\M-c" 'compile)
;(global-set-key "\M-e" 'next-error)
(global-set-key [up] 'previous-error)
(global-set-key [down] 'next-error)
;(global-set-key  [(f1)]  (lambda () (interactive) (manual-entry (current-word))))
