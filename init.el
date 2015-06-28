;; load computer-specific customizations:
(let ((host-file (concat system-name ".el")))
  (if (file-exists-p host-file)
      (load-file host-file)))

;; load generic customization, from org-mode file:
(org-babel-load-file
 (concat
  (file-name-directory (or load-file-name (buffer-file-name))) "/user/init.org"))
