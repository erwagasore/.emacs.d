;; [[file:~/.emacs.d/init.org::*UI%20Tweaks][UI Tweaks:1]]
(menu-bar-mode -1)
;; UI Tweaks:1 ends here

;; [[file:~/.emacs.d/init.org::*Adding%20more%20package-archives%20and%20Install%20use-package][Adding more package-archives and Install use-package:1]]
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("org" . "https://orgmode.org/elpa/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;; Adding more package-archives and Install use-package:1 ends here

;; [[file:~/.emacs.d/init.org::*configure%20use-package][configure use-package:1]]
(setq use-package-always-ensure t)
;; configure use-package:1 ends here

;; [[file:~/.emacs.d/init.org::*Command%20Log%20mode][Command Log mode:1]]
(use-package command-log-mode
  :commands (global-command-log-mode)
  :bind ("C-c o" . clm/toggle-command-log-buffer))
;; Command Log mode:1 ends here

;; [[file:~/.emacs.d/init.org::*Installing%20Magit][Installing Magit:1]]
(use-package magit
  :commands (magit-status)
  :bind ("C-x g" . magit-status))
;; Installing Magit:1 ends here
