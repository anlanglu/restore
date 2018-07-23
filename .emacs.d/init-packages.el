(require 'package)

(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/")
             '("marmalade" . "https://marmalade-repo.org/packages/"))

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)


(setq package-list
      '(saveplace xclip mouse auto-complete autopair)

; activate packages
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


