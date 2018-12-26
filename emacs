;; Ankur Gupta's
;;  ______     __    __     ______     ______     ______    
;; /\  ___\   /\ "-./  \   /\  __ \   /\  ___\   /\  ___\   
;; \ \  __\   \ \ \-./\ \  \ \  __ \  \ \ \____  \ \___  \  
;;  \ \_____\  \ \_\ \ \_\  \ \_\ \_\  \ \_____\  \/\_____\ 
;;   \/_____/   \/_/  \/_/   \/_/\/_/   \/_____/   \/_____/ 
;;
;; configuration file

;; ---------------------
;; Custom variables and faces
;; ---------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(package-selected-packages
   (quote
    (auto-complete nlinum-relative use-package evil-visual-mark-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; ---------------------
;; Package Auto Install 
;; ---------------------

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'cl)       ; Common Lisp
(require 'package)  ; Package Manager

;; Initialize Repoistories
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(package-initialize)   ; Initalize package.el

;; Declare Required Packages
(defvar packages
  '(evil               ; Modal keybindings
    nlinum-relative    ; Relative line numbersj
    auto-complete      ; Auto complete
    dracula-theme      ; Theming
    tramp)             ; Remote file editing
  "The packages that will be installed on launch")

;; Helper function to ensure if all packages are installed
(defun packages-installed-p ()
  (loop for p in packages
	when (not (package-installed-p p))
	do (return nil)
	finally (return t)))

;; If a package isn't installed, then iterate through and install all mising ones
(unless (packages-installed-p)
  ; Check for newer package versions
  (message "%s" "Emacs is now refreshing its package database..."
  (package-refresh-contents)
  (message "%s" "... done refreshing packages")
  ; Install all missing packages
  (dolist (p packages)
    (when (not (package-installed-p p))
      (package-install p)))))
  

;; ---------------------
;; General Editing
;; ---------------------

(evil-mode t)                                     ; enable evil

(setq inhibit-splash-screen t)                    ; disable splash screen
(global-hl-line-mode 1)                           ; highlight current row
(show-paren-mode 1)                               ; highlight matching paren
(menu-bar-mode -1)                                ; disable menu bar
(tool-bar-mode -1)                                ; disable tool bar

; Relative line numberings
(nlinum-relative-setup-evil)                      ; setup for evil
(add-hook 'prog-mode-hook 'nlinum-relative-mode)
(setq nlinum-relative-redisplay-delay 0)          ; set no delay
(setq nlinum-relative-current-symbol "")          ; display current line number
(setq nlinum-relative-offset 0)                   ; disable line offset


(load-theme 'dracula t)

;; ---------------------
;; Keybindings
;; ---------------------

(evil-define-key 'normal 'global
  ; Enter in normal mode will create a new line
  (kbd "RET") (kbd "o <escape>")
  (kbd "M-h") 'evil-window-left
  (kbd "M-j") 'evil-window-down
  (kbd "M-k") 'evil-window-up
  (kbd "M-l") 'evil-window-right)
