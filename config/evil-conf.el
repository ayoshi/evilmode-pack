;; Evil-mode configuration

;; Add evil-mode to the load path
(live-add-pack-lib "evil")

(require 'evil)
(evil-mode 1)

;; Bring back normal cursor
;;(setq evil-default-cursor nil)

(setq evil-default-state 'normal)

(setq evil-mode-line-format nil)

;Disable evil in special buffers
(loop for (mode . state) in '((inferior-emacs-lisp-mode . emacs)
                              (pylookup-mode . emacs)
                              (comint-mode . emacs)
                              (ebib-entry-mode . emacs)
                              (ebib-index-mode . emacs)
                              (ebib-log-mode . emacs)
                              (gtags-select-mode . emacs)
                              (shell-mode . emacs)
                              (term-mode . emacs)
                              (bc-menu-mode . emacs)
                              (magit-branch-manager-mode . emacs)
                              (semantic-symref-results-mode . emacs)
                              (rdictcc-buffer-mode . emacs))
      do (evil-set-initial-state mode state))
