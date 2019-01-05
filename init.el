;;; Package --- summary
;;; Commentary:

;;; Code:
;;; Begin initialization
;; Turn off mouse interface early in startup to avoid momentary display
(when window-system
  ;; disable these modes
  (scroll-bar-mode -1)
  (tool-bar-mode   -1)
  (tooltip-mode    -1)
  (menu-bar-mode   -1))

;; disable startup message and clear the scratch buffer
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; define font and positioning
(setq-default line-spacing 5)
(setq-default line-pixel-height 5)
(add-to-list 'default-frame-alist '(font . "PragmataPro-15:antialias=none"))
(add-to-list 'default-frame-alist '(top . 251))
(add-to-list 'default-frame-alist '(left . 374))
(add-to-list 'default-frame-alist '(height . 32))
(add-to-list 'default-frame-alist '(width . 114))

;;; Set up package
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
                         ("gnu"   . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;;; Bootstrap use-package
;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  (package-install 'diminish))

(eval-when-compile (require 'use-package))
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)                ;; if you use any :bind variant
;(setq use-package-verbose t)

;;; Load the config
(org-babel-load-file (concat user-emacs-directory "README.org"))

;;; init.el ends here
