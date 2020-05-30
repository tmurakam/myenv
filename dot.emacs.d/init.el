(setq user-full-name "Takuya Murakami")
(setq user-mail-address "tmurakam@tmurakam.org")

;; Emacs 設定ディレクトリを設定 (Emacs 22以下用)
(unless (boundp 'user-emacs-directory)
  (defvar user-emacs-directory (expand-file-name "~/.emacs.d/")))

;; load-path 追加関数
;; normal-top-level-add-subdirs-to-load-path はディレクトリの中で
;; [A-Za-z] で開始する物だけ追加するので、追加したくない物は . や _ を先頭に付与しておけばロードしない
;; dolist は Emacs 21 から標準関数なので積極的に利用して良い
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

;; Emacs Lisp のPathを通す
(add-to-load-path "elisp" "auto-install" "init.d" "init")

;; ライブラリがあれば autoload する関数
(defun autoload-if-found (function file &optional docstring interactive type)
  (and (locate-library file)
       (autoload function file docstring interactive type)))

;; load all files in .init.d
(let* ((dir (concat user-emacs-directory "init.d"))
       (el-suffix "\\.el\\'")
       (files (mapcar
                      (lambda (path) (replace-regexp-in-string el-suffix "" path))
                             (directory-files dir t el-suffix))))
  (while files
    (load (car files))
    (setq files (cdr files))))

;; custom-file
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file)

;; other local settings
(load "init_local")
