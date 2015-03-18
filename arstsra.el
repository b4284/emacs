(defun just-one-space-across-lines ()
  "just-one-space with argument -1"
  (interactive)
  (just-one-space -1))

(defun comment-toggle-current-line ()
  "comment or uncomment current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))

(defun kill-ring-save-line () 
  "Save the line containing point to the kill ring."
  (interactive)
  (kill-ring-save (line-beginning-position) 
                  (line-beginning-position 2))
  (message "Line copied."))

(global-set-key (kbd "M-\\") 'just-one-space-across-lines)
(global-set-key (kbd "M-[") 'comment-toggle-current-line)
(global-set-key (kbd "C-x C-y") 'kill-ring-save-line)

(defun my-pretty-lambda ()
  "make some word or string show as pretty Unicode symbols"
  (setq prettify-symbols-alist
        '(
          ("lambda" . 955) ; λ
          ;; ("->" . 8594)    ; →
          ;; ("=>" . 8658)    ; ⇒
          ;; ("map" . 8614)   ; ↦
          )))

(add-hook 'scheme-mode-hook 'my-pretty-lambda)
(global-prettify-symbols-mode 1)
