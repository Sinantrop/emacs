(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)


;;(package-initialize)
;;(package-refresh-contents)

(defvar myPackages
  '(better-defaults                 ;; Set up some better Emacs defaults
                      ;; Theme
    )
  )

;; Scans the list in myPackages
;; If the package listed is not already installed, install it
(mapc #'(lambda (package)
          (unless (package-installed-p package)
            (package-install package)))
      myPackages)

           ;; Load material theme
(global-linum-mode t);; Enable line numbers globally
(setq linum-format "%4d \u2502 ")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(twilight))
 '(custom-safe-themes
   '("e7ba99d0f4c93b9c5ca0a3f795c155fa29361927cadb99cfce301caf96055dfd" "5f824cddac6d892099a91c3f612fcf1b09bb6c322923d779216ab2094375c5ee" default))
 '(frame-brackground-mode 'dark)
 '(org-agenda-files '("c:/emacs/t.org"))
 '(package-selected-packages
   '(org-outlook ## excorporate twilight-theme material-theme better-defaults)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)


(setq
  rmail-primary-inbox-list '("pop://me%40example.com@mail.example.com")
  rmail-preserve-inbox t
  user-full-name "Funky Turtle"
  user-mail-address "miklas@surao.cz")
