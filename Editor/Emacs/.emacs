(setq custom-file "~/.emacs.custom.el")
(package-initialize)

(load "~/.emacs.rc/rc.el")
(setq make-backup-files nil) ; stop creating ~ files
(setq initial-scratch-message nil)
(setq inhibit-startup-screen t)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 0)
(fringe-mode 0)
(tooltip-mode 0)
(global-display-line-numbers-mode 0)
(size-indication-mode 1)

(rc/require-theme 'gruber-darker)

;;; ido
(rc/require 'ido-completing-read+)
(require 'ido-completing-read+)
(ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)

;;; smex
(rc/require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;;magit
(rc/require 'cl-lib)
(rc/require 'magit)
(setq magit-auto-revert-mode nil)
(global-set-key (kbd "C-c m s") 'magit-status)
(global-set-key (kbd "C-c m l") 'magit-log)

;;; multiple cursors
(rc/require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->")         'mc/mark-next-like-this)
(global-set-key (kbd "C-<")         'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<")     'mc/mark-all-like-this)
(global-set-key (kbd "C-\"")        'mc/skip-to-next-like-this)
(global-set-key (kbd "C-:")         'mc/skip-to-previous-like-this)

;;; dired
(require 'dired-x)
(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))
(setq-default dired-dwim-target t)
(setq dired-listing-switches "-alh")
(setq dired-mouse-drag-files t)

;;; helm
(rc/require 'helm)

(setq helm-ff-transformer-show-only-basename nil)

(global-set-key (kbd "C-c h t") 'helm-cmd-t)
(global-set-key (kbd "C-c h f") 'helm-find)
(global-set-key (kbd "C-c h a") 'helm-org-agenda-files-headings)
(global-set-key (kbd "C-c h r") 'helm-recentf)

;;; Move Text
(rc/require 'move-text)
(global-set-key (kbd "M-p") 'move-text-up)
(global-set-key (kbd "M-n") 'move-text-down)

(load-file custom-file)
