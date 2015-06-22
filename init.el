
;; First make all custom packages available
(let* (
       (base (file-name-directory (or load-file-name (buffer-file-name))))
       (default-directory (concat base "packages")))
    (dolist (path (file-expand-wildcards (concat base "packages/*")))
      (message "Loading user package: %s" path)
      (add-to-list 'load-path path))
    (if (file-exists-p default-directory)  ;; the above is enough?
        (normal-top-level-add-subdirs-to-load-path)))

;; Then load init file
(org-babel-load-file
 (concat
  (file-name-directory (or load-file-name (buffer-file-name))) "/user/init.org"))
