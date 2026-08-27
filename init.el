;;; init.el                                        -*- lexical-binding: t -*-

(borg-report-load-duration)

(eval-and-compile ; `use-package'
  (setopt use-package-enable-imenu-support t)
  (setopt use-package-verbose t)
  (require 'use-package))

(use-package custom
  :no-require t
  :config
  (setq custom-file (expand-file-name "custom.el" user-emacs-directory))
  (when (file-exists-p custom-file)
    (load custom-file nil t)))

(borg--load-config (concat (user-real-login-name) ".el"))

(use-package server
  :functions (server-running-p)
  :config
  (unless (server-running-p)
    (server-mode)))

(borg-report-init-duration)
