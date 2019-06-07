(provide 'spacemacs-common)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (auto-complete ## ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline smex restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file nyan-mode neotree move-text magit macrostep lorem-ipsum linum-relative link-hint indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump diminish define-word dashboard column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line)))
 '(powerline-gui-use-vcs-glyph t))
;; Local Variables:
;; no-byte-compile: t
;; End:

;;; spacemacs-common.el ends here
(deftheme spacemacs-dark "Spacemacs theme, the dark version")

(create-spacemacs-theme 'dark 'spacemacs-dark)

(provide-theme 'spacemacs-dark)
(require 'nyan-mode)
(nyan-mode)
(require 'which-key)
  (which-key-mode)
(require 'helm)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(defun edit-emacs-config()
  (interactive)
  (find-file "~/.emacs"))
(defun emacs-config-reload()
  (interactive)
  (load-file "~/.emacs"))
(defun emacs-customize-gui()
  (interactive)
  (customize))
(defun emacs-themes()
  (interactive)
  (customize-themes))
;(global-set-key (kbd "M-p c e") 'edit-emacs-config)
;(global-set-key (kbd "M-p c r") 'emacs-config-reload)
(progn
  "config"
  (define-prefix-command 'my-config-key-map)
  (define-key my-config-key-map (kbd "e") 'edit-emacs-config)
  (define-key my-config-key-map (kbd "r") 'emacs-config-reload)
  (define-key my-config-key-map (kbd "c") 'emacs-customize-gui)
  (define-key my-config-key-map (kbd "t") 'emacs-themes)
  )
(global-set-key (kbd "M-p c") my-config-key-map)
(require 'neotree)
(defun browse-files()
  (interactive)
  (neotree-toggle)
  )
(progn
  "files"
  (define-prefix-command 'my-files-key-map)
  (define-key my-files-key-map (kbd "f") 'helm-find-files)
  (define-key my-files-key-map (kbd "b") 'browse-files)
  (define-key my-files-key-map (kbd "r") 'recentf-open-files)
  )

(recentf-mode 1)
(require 'auto-complete)
(ac-config-default)
(require 'diminish)
(diminish 'auto-complete-mode)
(diminish 'which-key-mode)
(diminish 'undo-tree-mode)
(diminish 'eldoc-mode)


