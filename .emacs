(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "01ce486c3a7c8b37cf13f8c95ca4bb3c11413228b35676025fdf239e77019ea1" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (## jade-mode znc ws-butler window-numbering which-key volatile-highlights vi-tilde-fringe use-package spacemacs-theme spaceline smooth-scrolling reykjavik-theme restart-emacs rainbow-delimiters quelpa popwin popup persp-mode pcre2el paradox page-break-lines open-junk-file nyan-mode neotree move-text macrostep lorem-ipsum linum-relative leuven-theme js2-mode info+ indent-guide ido-vertical-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-jumper evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-args evil-anzu eval-sexp-fu ess elisp-slime-nav define-word clean-aindent-mode buffer-move auto-highlight-symbol auto-compile auctex aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line)))
 '(znc-servers znc-servers))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; hide menu, tool bar, and scroll bars on startup in X-window mode
(if window-system
    (tool-bar-mode -1)
)
(menu-bar-mode -1)
(scroll-bar-mode -1)
  

;; set up js2-mode
(autoload 'js2-msode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.js$\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))
(setq js2-include-node-externs t)

;; set up ERC for use with ZNC
;; secret keeping method from https://github.com/strugee/dots/.emacs
(require 'erc)
(require 'tls)

;; MELPA setup
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; load theme spacemacs dark
;;(load-theme 'reykjavik)
(load-theme 'spacemacs-dark)

;; set up AUCTeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;; set up jade mode
(add-to-list 'load-path "~/.emacs.d/vendor/jade-mode")
(require 'sws-mode)
(require 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.styl\\'" . sws-mode))

;; autostart programs and configurations
(nyan-mode)
(global-linum-mode)
(set-face-attribute 'default nil :height 120)
(setq-default indent-tabs-mode t)
(setq tab-width 4)
