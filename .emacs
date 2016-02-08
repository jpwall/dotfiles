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
    ("01ce486c3a7c8b37cf13f8c95ca4bb3c11413228b35676025fdf239e77019ea1" default)))
 '(inhibit-startup-screen t)
 '(znc-servers znc-servers))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; hide menu and tool bar on startup in X-window mode
(if window-system
    (tool-bar-mode -1)
)
(menu-bar-mode -1)
  

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
;;(require 'znc)
(setq znc-password (let ((secret (plist-get (nth 0 (auth-source-search :max 1
								       :host 'znc.strugee.net
								       :require '(:secret)
								       :create t))
					    :secret)))
		     (if (functionp secret)
			 (funcall secret)
		       secret)))

(setq znc-servers
      `(("znc.strugee.net" 7000 t
	 ((freenode "jpwall" ,znc-password)))))

;; MELPA setup
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(require 'znc)

;; load theme reykjavik
(load-theme 'reykjavik)

;; set up AUCTeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
