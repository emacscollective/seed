;;; early-init.el              -*- no-byte-compile: t; lexical-binding: t -*-
;;; Enable borg

(setq load-prefer-newer t)

(add-to-list 'load-path (expand-file-name "lib/borg" user-emacs-directory))
(require 'borg)
(borg-initialize)

;;; Enable auto-compile

(require 'auto-compile)
(auto-compile-on-load-mode)
(auto-compile-on-save-mode)

;;; Inhibit package

(setq package-enable-at-startup nil)
