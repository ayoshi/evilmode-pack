;; global keybindinds, making emacs behave more like vim

;;Escape should quit whatever it can
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)


;Use <Leader>, to bring up emacs command
(evil-leader/set-key "," 'smex)

;; Emulate some behavior of Lusty*

; Leader lb - ido buffers lf - ido files
(evil-leader/set-key "lb" 'ido-switch-buffer)
(evil-leader/set-key "lB" 'ibuffer)
(evil-leader/set-key "lf" 'ido-find-file)
(evil-leader/set-key "lr" 'ido-recentf-open)

;; simulate vim's "nnoremap <space> 10jzz"
(define-key evil-normal-state-map " " (lambda ()
                                        (interactive)
                                        (next-line 10)
                                        (evil-scroll-line-down 10)
                                        ))

;; Use = to indent region - very useful
(define-key evil-normal-state-map "=" 'indent-region)

;; simulate vim's "nnoremap <backspace> 10kzz"
(define-key evil-normal-state-map [backspace] (lambda ()
                     (interactive)
                     (previous-line 10)
                     (evil-scroll-line-up 10)
                     ))

;; Working with splits
(evil-leader/set-key "|" 'split-window-horizontally )
(evil-leader/set-key "\\" 'split-window-vertically)

;; Use Shift-arrows to move around splits
(windmove-default-keybindings)

;; Magit status screen
(evil-leader/set-key "gs" 'magit-status)

;;Undo tree
(evil-leader/set-key "u" 'undo-tree-visualize)

;; Super escape using chords
(key-chord-define-global "jk"  'evil-normal-state) ; super ESC
(key-chord-define-global "JK"  'evil-emacs-state)

;; Expand region
(define-key evil-normal-state-map (kbd "C-=") 'er/expand-region)

;; Use DASH for documentaton
(define-key evil-normal-state-map (kbd "?") 'dash-at-point)
